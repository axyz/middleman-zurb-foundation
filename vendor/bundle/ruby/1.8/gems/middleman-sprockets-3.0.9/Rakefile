require 'bundler'
Bundler::GemHelper.install_tasks

require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:cucumber, 'Run features that should pass') do |t|
  ENV["TEST"] = "true"
  ENV["AUTOLOAD_SPROCKETS"] = "true"
  t.cucumber_opts = "--color --tags ~@wip --strict --format #{ENV['CUCUMBER_FORMAT'] || 'Fivemat'}"
end

require 'rake/clean'

task :test => ["cucumber"]

desc "Build HTML documentation"
task :doc do
  sh 'bundle exec yard'
end
