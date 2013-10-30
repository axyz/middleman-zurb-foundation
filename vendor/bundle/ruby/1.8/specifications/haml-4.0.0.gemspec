# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{haml}
  s.version = "4.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nathan Weizenbaum", "Hampton Catlin", "Norman Clarke"]
  s.date = %q{2013-02-13}
  s.default_executable = %q{haml}
  s.description = %q{Haml (HTML Abstraction Markup Language) is a layer on top of HTML or XML that's
designed to express the structure of documents in a non-repetitive, elegant, and
easy way by using indentation rather than closing tags and allowing Ruby to be
embedded with ease. It was originally envisioned as a plugin for Ruby on Rails,
but it can function as a stand-alone templating engine.
}
  s.email = ["haml@googlegroups.com", "norman@njclarke.com"]
  s.executables = ["haml"]
  s.files = ["lib/haml/buffer.rb", "lib/haml/compiler.rb", "lib/haml/engine.rb", "lib/haml/error.rb", "lib/haml/exec.rb", "lib/haml/filters.rb", "lib/haml/helpers/action_view_extensions.rb", "lib/haml/helpers/action_view_mods.rb", "lib/haml/helpers/action_view_xss_mods.rb", "lib/haml/helpers/rails_323_textarea_fix.rb", "lib/haml/helpers/safe_erubis_template.rb", "lib/haml/helpers/xss_mods.rb", "lib/haml/helpers.rb", "lib/haml/options.rb", "lib/haml/parser.rb", "lib/haml/railtie.rb", "lib/haml/sass_rails_filter.rb", "lib/haml/template/options.rb", "lib/haml/template/plugin.rb", "lib/haml/template.rb", "lib/haml/util.rb", "lib/haml/version.rb", "lib/haml.rb", "bin/haml", "test/engine_test.rb", "test/erb/_av_partial_1.erb", "test/erb/_av_partial_2.erb", "test/erb/action_view.erb", "test/erb/standard.erb", "test/filters_test.rb", "test/gemfiles/Gemfile.rails-3.0.x", "test/gemfiles/Gemfile.rails-3.1.x", "test/gemfiles/Gemfile.rails-3.2.x", "test/gemfiles/Gemfile.rails-master", "test/helper_test.rb", "test/markaby/standard.mab", "test/mocks/article.rb", "test/parser_test.rb", "test/results/content_for_layout.xhtml", "test/results/eval_suppressed.xhtml", "test/results/helpers.xhtml", "test/results/helpful.xhtml", "test/results/just_stuff.xhtml", "test/results/list.xhtml", "test/results/nuke_inner_whitespace.xhtml", "test/results/nuke_outer_whitespace.xhtml", "test/results/original_engine.xhtml", "test/results/partial_layout.xhtml", "test/results/partial_layout_erb.xhtml", "test/results/partials.xhtml", "test/results/render_layout.xhtml", "test/results/silent_script.xhtml", "test/results/standard.xhtml", "test/results/tag_parsing.xhtml", "test/results/very_basic.xhtml", "test/results/whitespace_handling.xhtml", "test/template_test.rb", "test/templates/_av_partial_1.haml", "test/templates/_av_partial_1_ugly.haml", "test/templates/_av_partial_2.haml", "test/templates/_av_partial_2_ugly.haml", "test/templates/_layout.erb", "test/templates/_layout_for_partial.haml", "test/templates/_partial.haml", "test/templates/_text_area.haml", "test/templates/action_view.haml", "test/templates/action_view_ugly.haml", "test/templates/breakage.haml", "test/templates/content_for_layout.haml", "test/templates/eval_suppressed.haml", "test/templates/helpers.haml", "test/templates/helpful.haml", "test/templates/just_stuff.haml", "test/templates/list.haml", "test/templates/nuke_inner_whitespace.haml", "test/templates/nuke_outer_whitespace.haml", "test/templates/original_engine.haml", "test/templates/partial_layout.haml", "test/templates/partial_layout_erb.erb", "test/templates/partialize.haml", "test/templates/partials.haml", "test/templates/render_layout.haml", "test/templates/silent_script.haml", "test/templates/standard.haml", "test/templates/standard_ugly.haml", "test/templates/tag_parsing.haml", "test/templates/very_basic.haml", "test/templates/whitespace_handling.haml", "test/test_helper.rb", "test/util_test.rb", "Rakefile", ".yardopts", "CHANGELOG.md", "FAQ.md", "MIT-LICENSE", "README.md", "REFERENCE.md"]
  s.homepage = %q{http://haml.info/}
  s.licenses = ["MIT"]
  s.post_install_message = %q{
HEADS UP! Haml 4.0 has many improvements, but also has changes that may break
your application:

* Support for Ruby 1.8.6 dropped
* Support for Rails 2 dropped
* Sass filter now always outputs <style> tags
* Data attributes are now hyphenated, not underscored
* html2haml utility moved to the html2haml gem
* Textile and Maruku filters moved to the haml-contrib gem

For more info see:

http://rubydoc.info/github/haml/haml/file/CHANGELOG.md

}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{An elegant, structured (X)HTML/XML templating engine.}
  s.test_files = ["test/engine_test.rb", "test/filters_test.rb", "test/helper_test.rb", "test/parser_test.rb", "test/template_test.rb", "test/util_test.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<tilt>, [">= 0"])
      s.add_development_dependency(%q<rails>, [">= 3.0.0"])
      s.add_development_dependency(%q<rbench>, [">= 0"])
      s.add_development_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<nokogiri>, [">= 0"])
    else
      s.add_dependency(%q<tilt>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 3.0.0"])
      s.add_dependency(%q<rbench>, [">= 0"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<nokogiri>, [">= 0"])
    end
  else
    s.add_dependency(%q<tilt>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 3.0.0"])
    s.add_dependency(%q<rbench>, [">= 0"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<nokogiri>, [">= 0"])
  end
end
