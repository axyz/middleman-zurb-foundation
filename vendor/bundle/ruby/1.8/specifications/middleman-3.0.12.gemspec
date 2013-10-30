# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{middleman}
  s.version = "3.0.12"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thomas Reynolds", "Ben Hollis"]
  s.date = %q{2013-02-25}
  s.description = %q{A static site generator. Provides dozens of templating languages (Haml, Sass, Compass, Slim, CoffeeScript, and more). Makes minification, compression, cache busting, Yaml data (and more) an easy part of your development cycle.}
  s.email = ["me@tdreyno.com", "ben@benhollis.net"]
  s.files = [".gemtest", "Rakefile", "features/.gitkeep", "fixtures/.gitkeep", "lib/middleman.rb", "middleman.gemspec", "spec/middleman/future_spec.rb", "spec/spec_helper.rb"]
  s.homepage = %q{http://middlemanapp.com}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Hand-crafted frontend development}
  s.test_files = ["features/.gitkeep", "fixtures/.gitkeep"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<middleman-core>, ["= 3.0.12"])
      s.add_runtime_dependency(%q<middleman-more>, ["= 3.0.12"])
      s.add_runtime_dependency(%q<middleman-sprockets>, ["~> 3.0.8"])
    else
      s.add_dependency(%q<middleman-core>, ["= 3.0.12"])
      s.add_dependency(%q<middleman-more>, ["= 3.0.12"])
      s.add_dependency(%q<middleman-sprockets>, ["~> 3.0.8"])
    end
  else
    s.add_dependency(%q<middleman-core>, ["= 3.0.12"])
    s.add_dependency(%q<middleman-more>, ["= 3.0.12"])
    s.add_dependency(%q<middleman-sprockets>, ["~> 3.0.8"])
  end
end
