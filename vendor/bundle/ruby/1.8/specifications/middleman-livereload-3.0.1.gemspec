# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{middleman-livereload}
  s.version = "3.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thomas Reynolds"]
  s.date = %q{2012-12-19}
  s.description = %q{Adds LiveReload to Middleman}
  s.email = ["me@tdreyno.com"]
  s.files = [".gitignore", "Gemfile", "README.md", "Rakefile", "features/.gitkeep", "fixtures/.gitkeep", "lib/middleman-livereload.rb", "lib/middleman-livereload/extension.rb", "lib/middleman-livereload/version.rb", "lib/middleman_extension.rb", "middleman-livereload.gemspec"]
  s.homepage = %q{https://github.com/middleman/middleman-livereload}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{middleman-livereload}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Adds LiveReload to Middleman}
  s.test_files = ["features/.gitkeep", "fixtures/.gitkeep"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<middleman-core>, ["~> 3.0.2"])
      s.add_runtime_dependency(%q<rack-livereload>, [">= 0"])
      s.add_runtime_dependency(%q<em-websocket>, [">= 0.2.0"])
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.0"])
    else
      s.add_dependency(%q<middleman-core>, ["~> 3.0.2"])
      s.add_dependency(%q<rack-livereload>, [">= 0"])
      s.add_dependency(%q<em-websocket>, [">= 0.2.0"])
      s.add_dependency(%q<multi_json>, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<middleman-core>, ["~> 3.0.2"])
    s.add_dependency(%q<rack-livereload>, [">= 0"])
    s.add_dependency(%q<em-websocket>, [">= 0.2.0"])
    s.add_dependency(%q<multi_json>, ["~> 1.0"])
  end
end
