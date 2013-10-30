# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{execjs}
  s.version = "1.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sam Stephenson", "Josh Peek"]
  s.date = %q{2012-05-20}
  s.description = %q{ExecJS lets you run JavaScript code from Ruby.}
  s.email = ["sstephenson@gmail.com", "josh@joshpeek.com"]
  s.files = ["README.md", "LICENSE", "lib/execjs/disabled_runtime.rb", "lib/execjs/encoding.rb", "lib/execjs/external_runtime.rb", "lib/execjs/johnson_runtime.rb", "lib/execjs/json.rb", "lib/execjs/module.rb", "lib/execjs/mustang_runtime.rb", "lib/execjs/ruby_racer_runtime.rb", "lib/execjs/ruby_rhino_runtime.rb", "lib/execjs/runtime.rb", "lib/execjs/runtimes.rb", "lib/execjs/support/jsc_runner.js", "lib/execjs/support/jscript_runner.js", "lib/execjs/support/json2.js", "lib/execjs/support/node_runner.js", "lib/execjs/support/spidermonkey_runner.js", "lib/execjs/version.rb", "lib/execjs.rb"]
  s.homepage = %q{https://github.com/sstephenson/execjs}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Run JavaScript code from Ruby}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<multi_json>, ["~> 1.0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<multi_json>, ["~> 1.0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
