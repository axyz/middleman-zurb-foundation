# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{fssm}
  s.version = "0.2.10"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Travis Tilley", "Nathan Weizenbaum", "Chris Eppstein", "Jonathan Castello", "Tuomas Kareinen"]
  s.date = %q{2013-01-27}
  s.description = %q{The File System State Monitor keeps track of the state of any number of paths and will fire events when said state changes (create/update/delete). FSSM supports using FSEvents on MacOS, Inotify on GNU/Linux, and polling anywhere else.}
  s.email = ["ttilley@gmail.com"]
  s.files = [".gitignore", ".travis.yml", "Gemfile", "LICENSE", "README.markdown", "Rakefile", "example.rb", "ext/rakefile.rb", "fssm.gemspec", "lib/fssm.rb", "lib/fssm/backends/inotify.rb", "lib/fssm/backends/polling.rb", "lib/fssm/backends/rbfsevent.rb", "lib/fssm/monitor.rb", "lib/fssm/path.rb", "lib/fssm/pathname.rb", "lib/fssm/state/directory.rb", "lib/fssm/state/file.rb", "lib/fssm/support.rb", "lib/fssm/tree.rb", "lib/fssm/version.rb", "profile/prof-cache.rb", "profile/prof-fssm-pathname.html", "profile/prof-pathname-rubinius.rb", "profile/prof-pathname.rb", "profile/prof-plain-pathname.html", "profile/prof.html", "spec/count_down_latch.rb", "spec/monitor_spec.rb", "spec/path_spec.rb", "spec/root/duck/quack.txt", "spec/root/file.css", "spec/root/file.rb", "spec/root/file.yml", "spec/root/moo/cow.txt", "spec/spec_helper.rb"]
  s.homepage = %q{https://github.com/ttilley/fssm}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{fssm}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{File System State Monitor}
  s.test_files = ["spec/count_down_latch.rb", "spec/monitor_spec.rb", "spec/path_spec.rb", "spec/root/duck/quack.txt", "spec/root/file.css", "spec/root/file.rb", "spec/root/file.yml", "spec/root/moo/cow.txt", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 2.4.0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 2.4.0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 2.4.0"])
  end
end
