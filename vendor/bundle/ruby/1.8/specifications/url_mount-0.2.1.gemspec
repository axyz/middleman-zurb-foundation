# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{url_mount}
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Daniel Neighman"]
  s.date = %q{2010-06-06}
  s.description = %q{Glue to allow mounted rack applications to know where they're mounted}
  s.email = %q{has.sox@gmail.com}
  s.files = ["Gemfile", "Gemfile.lock", "lib/url_mount.rb", "LICENSE", "pkg/url_mount-0.1.0.gem", "Rakefile", "README.textile", "test/helper.rb", "test/test_url_mount.rb", "url_mount.gemspec"]
  s.homepage = %q{http://github.com/hassox/url_mount}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Universal mounting points for rack applications}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_runtime_dependency(%q<rack>, [">= 0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rack>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rack>, [">= 0"])
  end
end
