# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{coffee-script}
  s.version = "2.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jeremy Ashkenas", "Joshua Peek", "Sam Stephenson"]
  s.date = %q{2010-03-11}
  s.description = %q{    Ruby CoffeeScript is a bridge to the JS CoffeeScript compiler.
}
  s.email = %q{josh@joshpeek.com}
  s.files = ["lib/coffee-script.rb", "lib/coffee_script.rb", "LICENSE", "README.md"]
  s.homepage = %q{http://github.com/josh/ruby-coffee-script}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Ruby CoffeeScript Compiler}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<coffee-script-source>, [">= 0"])
      s.add_runtime_dependency(%q<execjs>, [">= 0"])
    else
      s.add_dependency(%q<coffee-script-source>, [">= 0"])
      s.add_dependency(%q<execjs>, [">= 0"])
    end
  else
    s.add_dependency(%q<coffee-script-source>, [">= 0"])
    s.add_dependency(%q<execjs>, [">= 0"])
  end
end
