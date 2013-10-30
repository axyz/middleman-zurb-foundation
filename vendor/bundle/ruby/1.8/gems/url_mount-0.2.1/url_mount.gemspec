# -*- encoding: utf-8 -*-
require 'bundler'

Gem::Specification.new do |s|
  s.name = %q{url_mount}
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Daniel Neighman"]
  s.date = %q{2010-06-07}
  s.description = %q{Glue to allow mounted rack applications to know where they're mounted}
  s.email = %q{has.sox@gmail.com}
  s.files = Dir["**/*"]
  s.homepage = %q{http://github.com/hassox/url_mount}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Universal mounting points for rack applications}

  s.add_bundler_dependencies
end

