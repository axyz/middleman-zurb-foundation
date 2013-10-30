# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{em-websocket}
  s.version = "0.4.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ilya Grigorik", "Martyn Loughran"]
  s.date = %q{2013-01-22}
  s.description = %q{EventMachine based WebSocket server}
  s.email = ["ilya@igvita.com", "me@mloughran.com"]
  s.files = [".gitignore", "CHANGELOG.rdoc", "Gemfile", "README.md", "Rakefile", "em-websocket.gemspec", "examples/echo.rb", "examples/multicast.rb", "examples/ping.rb", "examples/test.html", "lib/em-websocket.rb", "lib/em-websocket/close03.rb", "lib/em-websocket/close05.rb", "lib/em-websocket/close06.rb", "lib/em-websocket/close75.rb", "lib/em-websocket/connection.rb", "lib/em-websocket/debugger.rb", "lib/em-websocket/framing03.rb", "lib/em-websocket/framing04.rb", "lib/em-websocket/framing05.rb", "lib/em-websocket/framing07.rb", "lib/em-websocket/framing76.rb", "lib/em-websocket/handler.rb", "lib/em-websocket/handler03.rb", "lib/em-websocket/handler05.rb", "lib/em-websocket/handler06.rb", "lib/em-websocket/handler07.rb", "lib/em-websocket/handler08.rb", "lib/em-websocket/handler13.rb", "lib/em-websocket/handler75.rb", "lib/em-websocket/handler76.rb", "lib/em-websocket/handshake.rb", "lib/em-websocket/handshake04.rb", "lib/em-websocket/handshake75.rb", "lib/em-websocket/handshake76.rb", "lib/em-websocket/masking04.rb", "lib/em-websocket/message_processor_03.rb", "lib/em-websocket/message_processor_06.rb", "lib/em-websocket/version.rb", "lib/em-websocket/websocket.rb", "spec/helper.rb", "spec/integration/common_spec.rb", "spec/integration/draft03_spec.rb", "spec/integration/draft05_spec.rb", "spec/integration/draft06_spec.rb", "spec/integration/draft13_spec.rb", "spec/integration/draft75_spec.rb", "spec/integration/draft76_spec.rb", "spec/integration/shared_examples.rb", "spec/unit/framing_spec.rb", "spec/unit/handshake_spec.rb", "spec/unit/masking_spec.rb"]
  s.homepage = %q{http://github.com/igrigorik/em-websocket}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{em-websocket}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{EventMachine based WebSocket server}
  s.test_files = ["spec/helper.rb", "spec/integration/common_spec.rb", "spec/integration/draft03_spec.rb", "spec/integration/draft05_spec.rb", "spec/integration/draft06_spec.rb", "spec/integration/draft13_spec.rb", "spec/integration/draft75_spec.rb", "spec/integration/draft76_spec.rb", "spec/integration/shared_examples.rb", "spec/unit/framing_spec.rb", "spec/unit/handshake_spec.rb", "spec/unit/masking_spec.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<eventmachine>, [">= 0.12.9"])
      s.add_runtime_dependency(%q<http_parser.rb>, ["~> 0.5.3"])
      s.add_development_dependency(%q<em-spec>, ["~> 0.2.6"])
      s.add_development_dependency(%q<eventmachine>, [">= 0"])
      s.add_development_dependency(%q<em-http-request>, ["~> 0.2.6"])
      s.add_development_dependency(%q<rspec>, ["~> 2.12.0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<eventmachine>, [">= 0.12.9"])
      s.add_dependency(%q<http_parser.rb>, ["~> 0.5.3"])
      s.add_dependency(%q<em-spec>, ["~> 0.2.6"])
      s.add_dependency(%q<eventmachine>, [">= 0"])
      s.add_dependency(%q<em-http-request>, ["~> 0.2.6"])
      s.add_dependency(%q<rspec>, ["~> 2.12.0"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<eventmachine>, [">= 0.12.9"])
    s.add_dependency(%q<http_parser.rb>, ["~> 0.5.3"])
    s.add_dependency(%q<em-spec>, ["~> 0.2.6"])
    s.add_dependency(%q<eventmachine>, [">= 0"])
    s.add_dependency(%q<em-http-request>, ["~> 0.2.6"])
    s.add_dependency(%q<rspec>, ["~> 2.12.0"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
