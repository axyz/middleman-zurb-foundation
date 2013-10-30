# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "middleman-sprockets/version"

Gem::Specification.new do |s|
  s.name        = "middleman-sprockets"
  s.version     = Middleman::Sprockets::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Thomas Reynolds"]
  s.email       = ["me@tdreyno.com"]
  s.homepage    = "https://github.com/middleman/middleman-sprockets"
  s.summary     = %q{Sprockets support for Middleman}
  s.description = %q{Sprockets support for Middleman}

  s.rubyforge_project = "middleman-sprockets"

  s.files         = `git ls-files -z`.split("\0")
  s.test_files    = `git ls-files -z -- {fixtures,features}/*`.split("\0")
  s.require_paths = ["lib"]
  
  s.add_dependency("middleman-more", [">= 3.0.11"])
  s.add_dependency("sprockets", ["~> 2.1", "< 2.5"])
  s.add_dependency("sprockets-sass", ["~> 0.9.1"])
end