require "middleman-core"
require "middleman-more"

module Rails
  def self.env 
    Class.new do
      def test?
        false
      end
    end.new
  end

  class Engine
  end
end unless defined? Rails

Middleman::Extensions.register(:sprockets) do
  require "middleman-sprockets/extension"
  Middleman::Sprockets
end
