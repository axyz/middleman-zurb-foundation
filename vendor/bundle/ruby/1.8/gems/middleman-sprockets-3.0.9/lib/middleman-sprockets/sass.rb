require "sprockets-sass"
  
module Middleman
  module Sprockets
    
    # Sass renderer
    module Sass
  
      # Setup extension
      class << self
    
        # Once registered
        def registered(app)

          # Stick with Compass' asset functions
          ::Sprockets::Sass.add_sass_functions = false
          
          # Tell Sprockets to use our custom Sass template
          ::Sprockets.register_engine ".sass", SassPlusCSSFilenameTemplate
          
          # Tell Tilt to use it as well (for inline sass blocks)
          ::Tilt.register 'sass', SassPlusCSSFilenameTemplate
          ::Tilt.prefer(SassPlusCSSFilenameTemplate)
          
          # Tell Sprockets to use our custom Scss template
          ::Sprockets.register_engine ".scss", ScssPlusCSSFilenameTemplate
          
          # Tell Tilt to use it as well (for inline scss blocks)
          ::Tilt.register 'scss', ScssPlusCSSFilenameTemplate
          ::Tilt.prefer(ScssPlusCSSFilenameTemplate)
        end
    
        alias :included :registered
      end
      
      # A SassTemplate for Sprockets/Tilt which outputs debug messages
      class SassPlusCSSFilenameTemplate < ::Sprockets::Sass::SassTemplate
        self.default_mime_type = 'text/css'
          
        # Add exception messaging
        # @param [Class] context
        # @param [Hash] locals
        # @return [String]
        def evaluate(context, locals, &block)
          begin
            super
          rescue ::Sass::SyntaxError => e
            ::Sass::SyntaxError.exception_to_css(e, :full_exception => true)
          end
        end
        
      protected
        def cache_store
          nil
        end

        # Change Sass path, for url functions, to the build folder if we're building
        # @return [Hash]
        def sass_options
          orig = super

          if context && context.app
            location_of_sass_file = File.expand_path(context.app.source, context.app.root)
            css_dir = File.join(location_of_sass_file, context.app.css_dir)
            css_filename = File.expand_path(file, css_dir)
            orig.merge!(:css_filename => css_filename)
          end

          orig
        end
      end
        
      # SCSS version of the above template
      class ScssPlusCSSFilenameTemplate < SassPlusCSSFilenameTemplate
        self.default_mime_type = 'text/css'
          
        # Define the expected syntax for the template
        # @return [Symbol]
        def syntax
          :scss
        end
      end
  
    end
  end
end