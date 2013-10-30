# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{padrino-core}
  s.version = "0.10.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Padrino Team", "Nathan Esquenazi", "Davide D'Agostino", "Arthur Chiu"]
  s.date = %q{2012-06-20}
  s.default_executable = %q{padrino}
  s.description = %q{The Padrino core gem required for use of this framework}
  s.email = %q{padrinorb@gmail.com}
  s.executables = ["padrino"]
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = [".document", ".gitignore", ".yardopts", "LICENSE.txt", "README.rdoc", "Rakefile", "bin/padrino", "lib/padrino-core.rb", "lib/padrino-core/application.rb", "lib/padrino-core/application/rendering.rb", "lib/padrino-core/application/routing.rb", "lib/padrino-core/application/showexceptions.rb", "lib/padrino-core/caller.rb", "lib/padrino-core/cli/adapter.rb", "lib/padrino-core/cli/base.rb", "lib/padrino-core/cli/console.rb", "lib/padrino-core/cli/rake.rb", "lib/padrino-core/cli/rake_tasks.rb", "lib/padrino-core/command.rb", "lib/padrino-core/images/404.png", "lib/padrino-core/images/500.png", "lib/padrino-core/loader.rb", "lib/padrino-core/locale/cs.yml", "lib/padrino-core/locale/da.yml", "lib/padrino-core/locale/de.yml", "lib/padrino-core/locale/en.yml", "lib/padrino-core/locale/es.yml", "lib/padrino-core/locale/fr.yml", "lib/padrino-core/locale/hu.yml", "lib/padrino-core/locale/it.yml", "lib/padrino-core/locale/ja.yml", "lib/padrino-core/locale/lv.yml", "lib/padrino-core/locale/nl.yml", "lib/padrino-core/locale/no.yml", "lib/padrino-core/locale/pl.yml", "lib/padrino-core/locale/pt_br.yml", "lib/padrino-core/locale/ro.yml", "lib/padrino-core/locale/ru.yml", "lib/padrino-core/locale/sv.yml", "lib/padrino-core/locale/tr.yml", "lib/padrino-core/locale/uk.yml", "lib/padrino-core/locale/zh_cn.yml", "lib/padrino-core/locale/zh_tw.yml", "lib/padrino-core/logger.rb", "lib/padrino-core/mounter.rb", "lib/padrino-core/reloader.rb", "lib/padrino-core/router.rb", "lib/padrino-core/server.rb", "lib/padrino-core/support_lite.rb", "lib/padrino-core/tasks.rb", "lib/padrino-core/version.rb", "padrino-core.gemspec", "test/fixtures/apps/.components", "test/fixtures/apps/.gitignore", "test/fixtures/apps/complex.rb", "test/fixtures/apps/simple.rb", "test/fixtures/dependencies/a.rb", "test/fixtures/dependencies/b.rb", "test/fixtures/dependencies/c.rb", "test/fixtures/dependencies/circular/e.rb", "test/fixtures/dependencies/circular/f.rb", "test/fixtures/dependencies/circular/g.rb", "test/fixtures/dependencies/d.rb", "test/helper.rb", "test/mini_shoulda.rb", "test/test_application.rb", "test/test_core.rb", "test/test_dependencies.rb", "test/test_filters.rb", "test/test_locale.rb", "test/test_logger.rb", "test/test_mounter.rb", "test/test_reloader_complex.rb", "test/test_reloader_simple.rb", "test/test_rendering.rb", "test/test_restful_routing.rb", "test/test_router.rb", "test/test_routing.rb"]
  s.homepage = %q{http://www.padrinorb.com}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{padrino-core}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{The required Padrino core gem}
  s.test_files = ["test/fixtures/apps/.components", "test/fixtures/apps/.gitignore", "test/fixtures/apps/complex.rb", "test/fixtures/apps/simple.rb", "test/fixtures/dependencies/a.rb", "test/fixtures/dependencies/b.rb", "test/fixtures/dependencies/c.rb", "test/fixtures/dependencies/circular/e.rb", "test/fixtures/dependencies/circular/f.rb", "test/fixtures/dependencies/circular/g.rb", "test/fixtures/dependencies/d.rb", "test/helper.rb", "test/mini_shoulda.rb", "test/test_application.rb", "test/test_core.rb", "test/test_dependencies.rb", "test/test_filters.rb", "test/test_locale.rb", "test/test_logger.rb", "test/test_mounter.rb", "test/test_reloader_complex.rb", "test/test_reloader_simple.rb", "test/test_rendering.rb", "test/test_restful_routing.rb", "test/test_router.rb", "test/test_routing.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<tilt>, ["~> 1.3.0"])
      s.add_runtime_dependency(%q<sinatra>, ["~> 1.3.1"])
      s.add_runtime_dependency(%q<http_router>, ["~> 0.10.2"])
      s.add_runtime_dependency(%q<thor>, ["~> 0.15.2"])
      s.add_runtime_dependency(%q<activesupport>, ["~> 3.2.0"])
    else
      s.add_dependency(%q<tilt>, ["~> 1.3.0"])
      s.add_dependency(%q<sinatra>, ["~> 1.3.1"])
      s.add_dependency(%q<http_router>, ["~> 0.10.2"])
      s.add_dependency(%q<thor>, ["~> 0.15.2"])
      s.add_dependency(%q<activesupport>, ["~> 3.2.0"])
    end
  else
    s.add_dependency(%q<tilt>, ["~> 1.3.0"])
    s.add_dependency(%q<sinatra>, ["~> 1.3.1"])
    s.add_dependency(%q<http_router>, ["~> 0.10.2"])
    s.add_dependency(%q<thor>, ["~> 0.15.2"])
    s.add_dependency(%q<activesupport>, ["~> 3.2.0"])
  end
end
