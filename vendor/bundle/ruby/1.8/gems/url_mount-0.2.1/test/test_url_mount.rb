require 'helper'

class TestUrlMount < Test::Unit::TestCase
  should "initialize with a path and options" do
    u = UrlMount.new("/some/path", :some => "options")
    assert_equal u.raw_path, "/some/path"
    assert_equal u.options,  :some => "options"
    assert_equal({:some => "options"}, u.defaults)
  end

  context "required variables" do
    should "calculate the required variables of the mount as an emtpy array when there are none" do
      u = UrlMount.new("/foo")
      assert_equal [], u.required_variables
    end

    should "calculate the required variables as part of the variables when there are none" do
      u = UrlMount.new("/foo")
      assert_equal( {:required => [], :optional => []}, u.variables )
    end

    should "calculate the required variables when there are some" do
      u = UrlMount.new("/foo/:bar/baz/:homer", :bar => "bar", :homer => "homer")
      assert_equal [:bar, :homer], u.required_variables
      assert_equal( {:required => [:bar, :homer], :optional => []}, u.variables )
    end

    should "calculate required variables from procs" do
      u = UrlMount.new("/foo/:bar/:baz", :bar => "a_bar", :baz => proc{"baz_in_proc"})
      assert_equal "/foo/a_bar/baz_in_proc", u.url
    end

    should "generate a static url mount" do
      u = UrlMount.new("/foo/bar")
      assert_equal "/foo/bar", u.url
    end

    should "generate a dynamic url with static and variable segments" do
      u = UrlMount.new("/foo/:bar/baz/:barry", :bar => "bar", :barry => "sue")
      assert_equal "/foo/bar/baz/sue", u.url
    end

    should "raise an exception when a required variable is missing" do
      assert_raises UrlMount::Ungeneratable do
        UrlMount.new("/foo/:bar/:baz").url
      end
    end

    should "consume the options so the router does not use them" do
      opts = {:bar => "bar", :other => "other"}
      u = UrlMount.new("/foo/:bar", :bar => "some_default_bar")
      u.url(opts)
      assert_equal( {:other => "other"}, opts )
    end

    should "alias to_s to url" do
      u = UrlMount.new "/foo/bar"
      assert_equal u.to_s, u.url
    end

  end

  context "optional variables" do
    should "calculate the optional varialbles of the mount as an emtpy array when there are none" do
      u = UrlMount.new("/foo/bar")
      assert_equal [], u.optional_variables
    end

    should "calculate optional variables when there are some" do
      u = UrlMount.new("/foo(/:bar(/:baz))")
      assert_equal [:bar, :baz], u.optional_variables
    end

    should "calculate optional variables when there are some" do
      u = UrlMount.new("/foo(/:bar(/:baz))")
      assert_equal "/foo/gary", u.url(:bar => "gary")
    end

    should "skip nested optional variables when the optional parent is not present" do
      u = UrlMount.new("/foo(/:bar(/:baz))")
      assert_equal "/foo", u.url(:baz => "sue")
    end
  end

  context "default variables" do
    should "generate a simple url with a variable with a default" do
      u = UrlMount.new("/foo/:bar", :bar => "default")
      assert_equal "/foo/default", u.url
    end

    should "generate urls with multiple varilables using defaults" do
      u = UrlMount.new("/foo/:bar/:baz", :bar => "bar", :baz => "baz")
      assert_equal "/foo/bar/baz", u.url
    end

    should "generate urls with optional variables" do
      u = UrlMount.new("/foo(/:bar)", :bar => "bar")
      assert_equal "/foo/bar", u.url
    end

    should "generate urls with mixed variables" do
      u = UrlMount.new("/foo/:bar(/:baz(/:barry))", :barry => "bazz", :bar => "clue")
      assert_equal "/foo/clue", u.url
      assert_equal "/foo/clue/sue/bazz", u.url(:baz => "sue")
    end

    should "generate urls with overwritten defaults" do
      u = UrlMount.new("/foo/:bar(/:baz)", :bar => "barr", :baz => "bazz")
      assert_equal "/foo/sue/larry",  u.url(:bar => "sue", :baz => "larry")
      assert_equal "/foo/barr/gary",  u.url(:baz => "gary")
      assert_equal "/foo/harry/bazz", u.url(:bar => "harry")
    end

    should "generate optional and fixed paths with procs" do
      u = UrlMount.new("/foo/:bar(/:baz)",  :bar => proc{"the_bar"}, :baz => proc{"the_baz"})
      assert_equal "/foo/the_bar/the_baz",  u.url
      assert_equal "/foo/bar/other_baz",    u.url(:bar => "bar", :baz => proc{"other_baz"})
    end
  end

  context "complex compound urls" do
    should "generate complex urls containing multiple nested conditionals and multiple required variables" do
      u = UrlMount.new("/foo(/:bar(/:baz))/:gary", :gary => "gary")
      assert_equal "/foo/gary",           u.url
      assert_equal "/foo/bar/gary",       u.url(:bar => "bar")
      assert_equal "/foo/bar/baz/gary",   u.url(:bar => "bar", :baz => "baz")
    end
  end

  context "nested url mounts" do
    should "allow a mount to accept a mount" do
      u1 = UrlMount.new("/root/:bar", :bar => "bar")
      u2 = UrlMount.new("/baz/barry")
      u1.url_mount = u2
    end

    should "generate the mount" do
      u1 = UrlMount.new("/root/bar")
      u2 = UrlMount.new("/baz/barry")
      u2.url_mount = u1
      assert_equal "/root/bar", u1.url
      assert_equal "/root/bar/baz/barry", u2.url
    end

    should "overwrite a parents options" do
      u1 = UrlMount.new("/root/:bar", :bar => "bar")
      u2 = UrlMount.new("/baz/barry")
      u2.url_mount = u1
      assert_equal "/root/different/baz/barry", u2.url(:bar => "different")
    end
  end

  context "host options" do
    should "generate an absolute url when given the host option" do
      u = UrlMount.new("/foo/bar")
      assert_equal "http://example.com/foo/bar", u.url(:host => "example.com")
    end

    should "generate an absolute url when the host option is set in the route" do
      u = UrlMount.new("/foo/bar", :host => "example.com")
      assert_equal "http://example.com/foo/bar", u.url
    end

    should "overwrite the host" do
      u = UrlMount.new("/foo/bar", :host => "example.com")
      assert_equal "http://foo.com/foo/bar", u.url(:host => "foo.com")
    end

    should "allow me to set the scheme" do
      u = UrlMount.new("/foo/bar", :host => "example.com", :scheme => "https")
      assert_equal "https://example.com/foo/bar", u.url
    end

    should "raise an exception if the scheme is set and not the host" do
      u = UrlMount.new("/foo/bar")
      assert_raises(UrlMount::Ungeneratable) do
        u.url(:scheme => "https")
      end
    end
  end

  context "callbacks" do
    should "let me add a callback" do
      captures = []
      u = UrlMount.new("/foo/bar") do |env, opts|
        captures << :block
        req = Rack::Request.new(env)
        assert_equal "example.com", req.host
        opts[:host] = req.host
        opts[:scheme] = req.scheme
      end
      env = Rack::MockRequest.env_for("/", 'HTTP_HOST' => "example.com")
      assert_equal "http://example.com/foo/bar", u.url(env)
      assert_equal :block, captures.first
    end

    should "let me add many callbacks" do
      captures = []
      u = UrlMount.new("/foo/bar")
      u.callback do |env, opts|
        captures << :one
        opts[:one] = :one
      end
      u.callback do |env, opts|
        captures << :two
        captures << opts[:one]
      end
      env = Rack::MockRequest.env_for("/", :host => "example.com")
      assert_equal "/foo/bar", u.url(env)
      assert_equal [:one, :two, :one], captures
    end

    should "not run the callbacks if the env is not available" do
      captures = []
      u = UrlMount.new("/foo/bar")
      u.callback do |env, opts|
        captures << :here
      end
      assert_equal "/foo/bar", u.url
      assert_equal [], captures
    end

    should "let me generate a required option url via callbacks" do
      env = Rack::MockRequest.env_for "/"
      u = UrlMount.new("/foo/:bar") do |env, opts|
        opts[:bar] ||= "here_is_my_bar"
      end
      assert_equal "/foo/here_is_my_bar", u.url(env)
    end
  end
end
