class UrlMount
  class Ungeneratable < StandardError; end
  # Inspiration for this is taken straight from Usher.  http://github.com/joshbuddy/usher
  DELIMETERS = ['/', '(', ')']

  attr_accessor :raw_path, :options, :url_mount, :host, :scheme
  alias_method :defaults, :options
  alias_method :defaults=, :options=

  def initialize(path, opts = {}, &blk)
    @raw_path, @options = path, opts
    @url_split_regex = Regexp.new("[^#{DELIMETERS.collect{|d| Regexp.quote(d)}.join}]+|[#{DELIMETERS.collect{|d| Regexp.quote(d)}.join}]")
    @host, @scheme = opts[:host], opts[:scheme]
    @callbacks = []
    @callbacks << blk if blk
  end

  def callback(&blk)
    @callbacks << blk if blk
    @callbacks
  end

  def local_segments
    @local_segments || parse_local_segments
  end

  def variables
    required_variables + local_variables
  end

  def required_variables
    @required_variables ||= begin
      required_variable_segments.map{|s| s.name}
    end
  end

  def optional_variables
    @optional_variables ||= begin
      optional_variable_segments.map{|s| s.name}
    end
  end

  def required_variable_segments
    @required_variable_segments ||= begin
      local_segments.map{|s| s.required_variable_segments}.flatten.compact
    end
  end

  def optional_variable_segments
    @optional_variable_segments ||= begin
      local_segments.map{|s| s.optional_variable_segments}.flatten.compact
    end
  end

  def variables
    @variables ||= begin
      {
        :required => required_variables,
        :optional => optional_variables
      }
    end
  end

  def url(env = {}, opts = {})
    unless env.key?('rack.version')
      opts = env
      env  = nil
    end

    @callbacks.each{|blk| blk.call(env,opts)} if env

    requirements_met =  (local_required_variables - (opts.keys + options.keys)).empty?

    if !required_to_generate? && !requirements_met
      nil
    else
      raise Ungeneratable, "Missing required variables" if !requirements_met
      path = local_segments.inject([]){|url, segment| str = segment.to_s(opts); url << str if str; url}.join
      match = /(.*?)\/?$/.match(path)
      result = match[1]
      path = url_mount.nil? ? result : File.join(url_mount.to_s(opts), result)
      _host   = opts.delete(:host)    || host
      _scheme = opts.delete(:scheme)  || scheme
      if _host || _scheme
        _scheme ||= "http"
        raise Ungeneratable, "Missing host when generating absolute url" if _scheme && !_host
        uri = URI.parse(path)
        uri.host    = _host
        uri.scheme  = _scheme || "http"
        uri.to_s
      else
        path
      end
    end
  end
  alias_method :to_s, :url

  private
  def local_required_variables
    local_segments.select{|s| s.instance_of?(Segment::Variable)}.map{|s| s.name}
  end

  def required_to_generate?
    true
  end

  def parse_local_segments
    stack = []
    @local_segments = []
    buffer = ""
    raw_path.scan(@url_split_regex).each do |segment|
      case segment
      when '/'
        if stack.empty?
          @local_segments << Segment::Delimeter.new
        else
          buffer << segment
        end
      when '('
        buffer << '(' unless stack.empty?
        stack << segment
      when ')'
        stack.pop
        if stack.empty?
          @local_segments << Segment::Conditional.new(buffer, options)
          buffer = ""
        else
          buffer << ')'
        end
      when /^\:(.*)/
        if stack.empty?
          @local_segments << Segment::Variable.new($1, options)
        else
          buffer << segment
        end
      else
        if stack.empty?
          @local_segments << Segment::Static.new(segment)
        else
          buffer << segment
        end
      end
    end
    @local_segments
  end

  class Segment

    class Base
      attr_accessor :name

      def optional_variable_segments; []; end
      def required_variable_segments; []; end
    end

    class Delimeter < Base
      def to_s(opts = {}); "/"; end
    end

    class Static < Base
      def initialize(name); @name = name; end
      def to_s(opts = {}); @name; end
    end

    class Variable < Base
      def initialize(name, options)
        @name, @options = name.to_sym, (options || {})
      end

      def required_variable_segments
        [self]
      end

      def to_s(opts = {})
        item = opts.delete(name) || @options[name]
        item.respond_to?(:call) ? item.call : item
      end
    end

    class Conditional < Base
      class UnrequiredUrlMount < UrlMount
        private
        def required_to_generate?; false; end
      end

      def initialize(*args)
        @url_mount = UnrequiredUrlMount.new(*args)
      end

      def optional_variable_segments
        (@url_mount.required_variable_segments + @url_mount.optional_variable_segments)
      end

      def required_variables; []; end
      def optional_variables
        (@url_mount.required_variables + @url_mount.optional_variables)
      end

      def to_s(opts = {})
        @url_mount.to_s(opts)
      end
    end
  end
end
