require 'rubygems'
require 'test/unit'
require 'shoulda'
require 'rack'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'url_mount'

class Test::Unit::TestCase
end
