require "sprockets"

# Sprockets extension
module Middleman::Sprockets

  # Setup extension
  class << self

    # Once registered
    def registered(app)
      # Location of javascripts external to source directory.
      # @return [Array]
      #   set :js_assets_paths, ["#{root}/assets/javascripts/", "/path/2/external/js/repository/"]
    
      # Add class methods to context
      app.send :include, InstanceMethods
      
      require "middleman-sprockets/sass"
      app.register Middleman::Sprockets::Sass

      app.after_configuration do
        helpers JavascriptTagHelper
      end

      # Once Middleman is setup
      app.after_configuration do
        ::Tilt.register ::Sprockets::EjsTemplate, 'ejs'
        ::Tilt.register ::Sprockets::EcoTemplate, 'eco'
        
        # Add any gems with (vendor|app|.)/assets/javascripts to paths
        # also add similar directories from project root (like in rails)
        try_paths = [
          %w{ assets },
          %w{ app },
          %w{ app assets },
          %w{ vendor },
          %w{ vendor assets },
          %w{ lib },
          %w{ lib assets }
        ].inject([]) do |sum, v|
          sum + [File.join(v, 'javascripts'), File.join(v, 'stylesheets')]
        end

        ([root] + ::Middleman.rubygems_latest_specs.map(&:full_gem_path)).each do |root_path|
          try_paths.map {|p| File.join(root_path, p) }.
            select {|p| File.directory?(p) }.
            each {|path| sprockets.append_path(path) }
        end

        # Setup Sprockets Sass options
        sass.each { |k, v| ::Sprockets::Sass.options[k] = v }

        # Intercept requests to /javascripts and /stylesheets and pass to sprockets
        our_sprockets = sprockets
        
        map("/#{js_dir}")  { run our_sprockets }
        map("/#{css_dir}") { run our_sprockets }
      end
    end
    alias :included :registered
  end

  module InstanceMethods
    # @return [Middleman::CoreExtensions::Sprockets::MiddlemanSprocketsEnvironment]
    def sprockets
      @sprockets ||= MiddlemanSprocketsEnvironment.new(self)
    end
  end

  # Generic Middleman Sprockets env
  class MiddlemanSprocketsEnvironment < ::Sprockets::Environment
    # Setup
    def initialize(app)
      @app = app
      super app.source_dir

      # Make the app context available to Sprockets
      context_class.send(:define_method, :app) { app }

      context_class.class_eval do
        # Find the Middleman-compatible version of this file's path
        def mm_path
          @mm_path ||= app.sitemap.file_to_path(pathname.to_s)
        end

        def method_missing(*args)
          name = args.first
          if app.respond_to?(name)
            # Set the middleman application current path, since it won't
            # be set if the request came in through Sprockets and helpers
            # won't work without it.
            app.current_path = mm_path unless app.current_path
            app.send(*args)
          else
            super
          end
        end
      end

      # Remove compressors, we handle these with middleware
      unregister_bundle_processor 'application/javascript', :js_compressor
      unregister_bundle_processor 'text/css', :css_compressor

      # configure search paths
      append_path app.js_dir
      append_path app.css_dir

      # add custom assets paths to the scope

      app.js_assets_paths.each do |p|
        append_path p
      end if app.respond_to?(:js_assets_paths)

      # Stylus support 
      if defined?(::Stylus)
        require 'stylus/sprockets'
        ::Stylus.setup(self, app.styl)
      end
    end

    # Override Sprockets' default digest function to *not*
    # change depending on the exact Sprockets version. It still takes
    # into account "version" which is a user-suppliable version
    # number that can be used to force assets to have a new
    # hash.
    def digest
      @digest ||= Digest::SHA1.new.update(version.to_s)
      @digest.dup
    end

    # During development, don't use the asset cache
    def find_asset(path, options = {})
      expire_index! if @app.development?
      super
    end

    # Clear cache on error
    def javascript_exception_response(exception)
      expire_index!
      super(exception)
    end

    # Clear cache on error
    alias :css_exception_response :javascript_exception_response
  end
  
  module JavascriptTagHelper
    
    # extend padrinos javascript_include_tag with debug functionality
    # splits up script dependencies in individual files when
    # configuration variable :debug_assets is set to true
    def javascript_include_tag(*sources)
      if respond_to?(:debug_assets) && debug_assets && !build?
        options = sources.extract_options!.symbolize_keys

        # loop through all sources and the dependencies and
        # output each as script tag in the correct order
        sources.map do |source|
          dependencies_paths = sprockets[source].to_a.map do |dependency|
            # if sprockets sees "?body=1" it only gives back the body
            # of the script without the dependencies included
            dependency.logical_path << "?body=1"
          end

          super(dependencies_paths, options)
        end.join("").gsub("body=1.js", "body=1")
      else
        super
      end
    end
  end
end
