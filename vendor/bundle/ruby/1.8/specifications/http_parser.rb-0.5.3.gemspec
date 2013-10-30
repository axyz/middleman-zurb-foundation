# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{http_parser.rb}
  s.version = "0.5.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Marc-Andre Cournoyer", "Aman Gupta"]
  s.date = %q{2011-10-01}
  s.description = %q{Ruby bindings to http://github.com/ry/http-parser and http://github.com/a2800276/http-parser.java}
  s.email = ["macournoyer@gmail.com", "aman@tmm1.net"]
  s.extensions = ["ext/ruby_http_parser/extconf.rb"]
  s.files = [".gitignore", ".gitmodules", "Gemfile", "Gemfile.lock", "LICENSE-MIT", "README.md", "Rakefile", "bench/thin.rb", "ext/ruby_http_parser/.gitignore", "ext/ruby_http_parser/RubyHttpParserService.java", "ext/ruby_http_parser/ext_help.h", "ext/ruby_http_parser/extconf.rb", "ext/ruby_http_parser/org/ruby_http_parser/RubyHttpParser.java", "ext/ruby_http_parser/ruby_http_parser.c", "ext/ruby_http_parser/vendor/.gitkeep", "http_parser.rb.gemspec", "lib/http/parser.rb", "lib/http_parser.rb", "spec/parser_spec.rb", "spec/spec_helper.rb", "spec/support/requests.json", "spec/support/responses.json", "tasks/compile.rake", "tasks/fixtures.rake", "tasks/spec.rake", "tasks/submodules.rake", "ext/ruby_http_parser/vendor/http-parser/CONTRIBUTIONS", "ext/ruby_http_parser/vendor/http-parser/http_parser.c", "ext/ruby_http_parser/vendor/http-parser/http_parser.h", "ext/ruby_http_parser/vendor/http-parser/LICENSE-MIT", "ext/ruby_http_parser/vendor/http-parser/Makefile", "ext/ruby_http_parser/vendor/http-parser/README.md", "ext/ruby_http_parser/vendor/http-parser/test.c", "ext/ruby_http_parser/vendor/http-parser-java/build.xml", "ext/ruby_http_parser/vendor/http-parser-java/compile", "ext/ruby_http_parser/vendor/http-parser-java/ext/primitives.jar", "ext/ruby_http_parser/vendor/http-parser-java/http_parser.c", "ext/ruby_http_parser/vendor/http-parser-java/http_parser.h", "ext/ruby_http_parser/vendor/http-parser-java/LICENSE-MIT", "ext/ruby_http_parser/vendor/http-parser-java/Makefile", "ext/ruby_http_parser/vendor/http-parser-java/README.md", "ext/ruby_http_parser/vendor/http-parser-java/src/impl/http_parser/HTTPCallback.java", "ext/ruby_http_parser/vendor/http-parser-java/src/impl/http_parser/HTTPDataCallback.java", "ext/ruby_http_parser/vendor/http-parser-java/src/impl/http_parser/HTTPErrorCallback.java", "ext/ruby_http_parser/vendor/http-parser-java/src/impl/http_parser/HTTPException.java", "ext/ruby_http_parser/vendor/http-parser-java/src/impl/http_parser/HTTPMethod.java", "ext/ruby_http_parser/vendor/http-parser-java/src/impl/http_parser/HTTPParser.java", "ext/ruby_http_parser/vendor/http-parser-java/src/impl/http_parser/lolevel/HTTPCallback.java", "ext/ruby_http_parser/vendor/http-parser-java/src/impl/http_parser/lolevel/HTTPDataCallback.java", "ext/ruby_http_parser/vendor/http-parser-java/src/impl/http_parser/lolevel/HTTPErrorCallback.java", "ext/ruby_http_parser/vendor/http-parser-java/src/impl/http_parser/lolevel/HTTPParser.java", "ext/ruby_http_parser/vendor/http-parser-java/src/impl/http_parser/lolevel/ParserSettings.java", "ext/ruby_http_parser/vendor/http-parser-java/src/impl/http_parser/ParserSettings.java", "ext/ruby_http_parser/vendor/http-parser-java/src/impl/http_parser/ParserType.java", "ext/ruby_http_parser/vendor/http-parser-java/src/impl/http_parser/Util.java", "ext/ruby_http_parser/vendor/http-parser-java/src/test/http_parser/lolevel/Message.java", "ext/ruby_http_parser/vendor/http-parser-java/src/test/http_parser/lolevel/Requests.java", "ext/ruby_http_parser/vendor/http-parser-java/src/test/http_parser/lolevel/Responses.java", "ext/ruby_http_parser/vendor/http-parser-java/src/test/http_parser/lolevel/Test.java", "ext/ruby_http_parser/vendor/http-parser-java/src/test/http_parser/lolevel/TestHeaderOverflowError.java", "ext/ruby_http_parser/vendor/http-parser-java/src/test/http_parser/lolevel/TestLoaderNG.java", "ext/ruby_http_parser/vendor/http-parser-java/src/test/http_parser/lolevel/TestNoOverflowLongBody.java", "ext/ruby_http_parser/vendor/http-parser-java/src/test/http_parser/lolevel/UnitTest.java", "ext/ruby_http_parser/vendor/http-parser-java/src/test/http_parser/lolevel/Upgrade.java", "ext/ruby_http_parser/vendor/http-parser-java/src/test/http_parser/lolevel/Util.java", "ext/ruby_http_parser/vendor/http-parser-java/src/test/http_parser/lolevel/WrongContentLength.java", "ext/ruby_http_parser/vendor/http-parser-java/test.c", "ext/ruby_http_parser/vendor/http-parser-java/test_permutations", "ext/ruby_http_parser/vendor/http-parser-java/test_unit", "ext/ruby_http_parser/vendor/http-parser-java/test_utf8", "ext/ruby_http_parser/vendor/http-parser-java/tests.dumped", "ext/ruby_http_parser/vendor/http-parser-java/tests.utf8", "ext/ruby_http_parser/vendor/http-parser-java/TODO", "ext/ruby_http_parser/vendor/http-parser-java/tools/byte_constants.rb", "ext/ruby_http_parser/vendor/http-parser-java/tools/const_char.rb", "ext/ruby_http_parser/vendor/http-parser-java/tools/lowcase.rb", "ext/ruby_http_parser/vendor/http-parser-java/tools/parse_tests.rb"]
  s.homepage = %q{http://github.com/tmm1/http_parser.rb}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Simple callback-based HTTP request/response parser}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake-compiler>, [">= 0.7.9"])
      s.add_development_dependency(%q<rspec>, [">= 2.0.1"])
      s.add_development_dependency(%q<json>, [">= 1.4.6"])
      s.add_development_dependency(%q<yajl-ruby>, [">= 0.8.1"])
    else
      s.add_dependency(%q<rake-compiler>, [">= 0.7.9"])
      s.add_dependency(%q<rspec>, [">= 2.0.1"])
      s.add_dependency(%q<json>, [">= 1.4.6"])
      s.add_dependency(%q<yajl-ruby>, [">= 0.8.1"])
    end
  else
    s.add_dependency(%q<rake-compiler>, [">= 0.7.9"])
    s.add_dependency(%q<rspec>, [">= 2.0.1"])
    s.add_dependency(%q<json>, [">= 1.4.6"])
    s.add_dependency(%q<yajl-ruby>, [">= 0.8.1"])
  end
end
