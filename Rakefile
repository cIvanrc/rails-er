require 'bundler/setup'

require 'bundler/gem_tasks'
Bundler::GemHelper.install_tasks

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |task|
  task.rspec_opts = ['--color', '--format', 'doc']
end

task test: :spec
task default: :spec
