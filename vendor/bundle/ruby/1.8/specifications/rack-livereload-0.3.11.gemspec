# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rack-livereload}
  s.version = "0.3.11"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["John Bintz"]
  s.date = %q{2013-01-24}
  s.description = %q{Insert LiveReload into your app easily as Rack middleware}
  s.email = ["john@coswellproductions.com"]
  s.files = [".gitignore", ".travis.yml", "Appraisals", "Gemfile", "Guardfile", "LICENSE", "README.md", "Rakefile", "config.ru", "features/skip_certain_browsers.feature", "features/step_definitions/given/i_have_a_rack_app_with_live_reload.rb", "features/step_definitions/then/i_should_not_have_livereload_code.rb", "features/step_definitions/when/i_make_a_request_with_headers.rb", "features/support/env.rb", "gemfiles/rails30.gemfile", "gemfiles/rails30.gemfile.lock", "gemfiles/rails31.gemfile", "gemfiles/rails31.gemfile.lock", "gemfiles/rails32.gemfile", "gemfiles/rails32.gemfile.lock", "index.html", "js/WebSocketMain.swf", "js/livereload.js", "js/swfobject.js", "js/web_socket.js", "lib/rack-livereload.rb", "lib/rack/livereload.rb", "rack-livereload.gemspec", "skel/livereload.html.erb", "spec/rack/livereload_spec.rb", "spec/spec_helper.rb"]
  s.homepage = %q{}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{rack-livereload}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Insert LiveReload into your app easily as Rack middleware}
  s.test_files = ["features/skip_certain_browsers.feature", "features/step_definitions/given/i_have_a_rack_app_with_live_reload.rb", "features/step_definitions/then/i_should_not_have_livereload_code.rb", "features/step_definitions/when/i_make_a_request_with_headers.rb", "features/support/env.rb", "spec/rack/livereload_spec.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<cucumber>, [">= 0"])
      s.add_development_dependency(%q<httparty>, [">= 0"])
      s.add_development_dependency(%q<sinatra>, [">= 0"])
      s.add_development_dependency(%q<shotgun>, [">= 0"])
      s.add_development_dependency(%q<thin>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<guard>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<guard-cucumber>, [">= 0"])
      s.add_development_dependency(%q<guard-livereload>, [">= 0"])
      s.add_development_dependency(%q<webmock>, [">= 0"])
      s.add_development_dependency(%q<nokogiri>, [">= 0"])
      s.add_development_dependency(%q<appraisal>, ["~> 0.4"])
      s.add_runtime_dependency(%q<rack>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<cucumber>, [">= 0"])
      s.add_dependency(%q<httparty>, [">= 0"])
      s.add_dependency(%q<sinatra>, [">= 0"])
      s.add_dependency(%q<shotgun>, [">= 0"])
      s.add_dependency(%q<thin>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<guard>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<guard-cucumber>, [">= 0"])
      s.add_dependency(%q<guard-livereload>, [">= 0"])
      s.add_dependency(%q<webmock>, [">= 0"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
      s.add_dependency(%q<appraisal>, ["~> 0.4"])
      s.add_dependency(%q<rack>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<cucumber>, [">= 0"])
    s.add_dependency(%q<httparty>, [">= 0"])
    s.add_dependency(%q<sinatra>, [">= 0"])
    s.add_dependency(%q<shotgun>, [">= 0"])
    s.add_dependency(%q<thin>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<guard>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<guard-cucumber>, [">= 0"])
    s.add_dependency(%q<guard-livereload>, [">= 0"])
    s.add_dependency(%q<webmock>, [">= 0"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
    s.add_dependency(%q<appraisal>, ["~> 0.4"])
    s.add_dependency(%q<rack>, [">= 0"])
  end
end
