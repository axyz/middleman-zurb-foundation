# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sprockets-sass}
  s.version = "0.9.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Pete Browne"]
  s.date = %q{2012-09-26}
  s.description = %q{When using Sprockets 2.0 with Sass you will eventually run into a pretty big issue. `//= require` directives will not allow Sass mixins, variables, etc. to be shared between files. So you'll try to use `@import`, and that'll also blow up in your face. `sprockets-sass` fixes all of this by creating a Sass::Importer that is Sprockets aware.}
  s.email = ["me@petebrowne.com"]
  s.files = [".gitignore", "Appraisals", "Gemfile", "LICENSE", "README.md", "Rakefile", "gemfiles/compass-0.11_sass-3.1.gemfile", "gemfiles/compass-0.11_sass-3.2.gemfile", "gemfiles/sprockets-2.0_sass-3.1.gemfile", "gemfiles/sprockets-2.0_sass-3.2.gemfile", "gemfiles/sprockets-2.1_sass-3.1.gemfile", "gemfiles/sprockets-2.1_sass-3.2.gemfile", "gemfiles/sprockets-2.2_sass-3.1.gemfile", "gemfiles/sprockets-2.2_sass-3.2.gemfile", "gemfiles/sprockets-2.3_sass-3.1.gemfile", "gemfiles/sprockets-2.3_sass-3.2.gemfile", "gemfiles/sprockets-2.4_sass-3.1.gemfile", "gemfiles/sprockets-2.4_sass-3.2.gemfile", "gemfiles/sprockets-2.5_sass-3.1.gemfile", "gemfiles/sprockets-2.5_sass-3.2.gemfile", "gemfiles/sprockets-2.6_sass-3.1.gemfile", "gemfiles/sprockets-2.6_sass-3.2.gemfile", "lib/sprockets-sass.rb", "lib/sprockets/sass.rb", "lib/sprockets/sass/cache_store.rb", "lib/sprockets/sass/compressor.rb", "lib/sprockets/sass/functions.rb", "lib/sprockets/sass/importer.rb", "lib/sprockets/sass/sass_template.rb", "lib/sprockets/sass/scss_template.rb", "lib/sprockets/sass/version.rb", "spec/fixtures/image.jpg", "spec/spec_helper.rb", "spec/sprockets-sass_spec.rb", "spec/support/be_fresh_matcher.rb", "sprockets-sass.gemspec"]
  s.homepage = %q{http://github.com/petebrowne/sprockets-sass}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{sprockets-sass}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Better Sass integration with Sprockets 2.0}
  s.test_files = ["spec/fixtures/image.jpg", "spec/spec_helper.rb", "spec/sprockets-sass_spec.rb", "spec/support/be_fresh_matcher.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sprockets>, ["~> 2.0"])
      s.add_runtime_dependency(%q<tilt>, ["~> 1.1"])
      s.add_development_dependency(%q<appraisal>, ["~> 0.4"])
      s.add_development_dependency(%q<rspec>, ["~> 2.6"])
      s.add_development_dependency(%q<test-construct>, ["~> 1.2"])
      s.add_development_dependency(%q<sprockets-helpers>, ["~> 0.7"])
      s.add_development_dependency(%q<sass>, ["~> 3.1"])
      s.add_development_dependency(%q<compass>, ["~> 0.11"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<sprockets>, ["~> 2.0"])
      s.add_dependency(%q<tilt>, ["~> 1.1"])
      s.add_dependency(%q<appraisal>, ["~> 0.4"])
      s.add_dependency(%q<rspec>, ["~> 2.6"])
      s.add_dependency(%q<test-construct>, ["~> 1.2"])
      s.add_dependency(%q<sprockets-helpers>, ["~> 0.7"])
      s.add_dependency(%q<sass>, ["~> 3.1"])
      s.add_dependency(%q<compass>, ["~> 0.11"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<sprockets>, ["~> 2.0"])
    s.add_dependency(%q<tilt>, ["~> 1.1"])
    s.add_dependency(%q<appraisal>, ["~> 0.4"])
    s.add_dependency(%q<rspec>, ["~> 2.6"])
    s.add_dependency(%q<test-construct>, ["~> 1.2"])
    s.add_dependency(%q<sprockets-helpers>, ["~> 0.7"])
    s.add_dependency(%q<sass>, ["~> 3.1"])
    s.add_dependency(%q<compass>, ["~> 0.11"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
