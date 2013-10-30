# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{listen}
  s.version = "0.7.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thibaud Guillaume-Gentil", "Maher Sallam"]
  s.date = %q{2013-02-24}
  s.description = %q{The Listen gem listens to file modifications and notifies you about the changes. Works everywhere!}
  s.email = ["thibaud@thibaud.me", "maher@sallam.me"]
  s.files = ["lib/listen/dependency_manager.rb", "lib/listen/version.rb", "lib/listen/adapters/darwin.rb", "lib/listen/adapters/bsd.rb", "lib/listen/adapters/linux.rb", "lib/listen/adapters/polling.rb", "lib/listen/adapters/windows.rb", "lib/listen/directory_record.rb", "lib/listen/multi_listener.rb", "lib/listen/turnstile.rb", "lib/listen/listener.rb", "lib/listen/adapter.rb", "lib/listen.rb", "CHANGELOG.md", "LICENSE", "README.md"]
  s.homepage = %q{https://github.com/guard/listen}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{listen}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Listen to file modifications}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>, [">= 0"])
    else
      s.add_dependency(%q<bundler>, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>, [">= 0"])
  end
end
