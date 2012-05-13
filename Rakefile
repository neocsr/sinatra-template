require 'rspec/core/rake_task'
require 'cucumber/rake/task'
require 'yard'

task :default => [:rspec, :cucumber]

desc "Run all tests"
RSpec::Core::RakeTask.new(:rspec) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rspec_opts = ['-cfs --backtrace']
end

desc "Run cucumber tests"
Cucumber::Rake::Task.new(:cucumber) do |t|
  t.cucumber_opts = "features --format pretty"
end

namespace :test do
  desc "Run models tests"
  RSpec::Core::RakeTask.new(:models) do |spec|
    spec.pattern = 'spec/models/*_spec.rb'
    spec.rspec_opts = ['-cfs --backtrace']
  end

  desc "Run routes tests"
  RSpec::Core::RakeTask.new(:routes) do |spec|
    spec.pattern = 'spec/routes/*_spec.rb'
    spec.rspec_opts = ['-cfs --backtrace']
  end

  desc "Run all specs with code coverage"
  task :coverage do
    ENV['COVERAGE'] = 'true'
    Rake::Task[:rspec].execute
  end
end

YARD::Rake::YardocTask.new do |t|
  t.files   = ['app.rb', '**/helpers/*.rb', '**/routes/*.rb', '**/models/*.rb']
  t.options = ['--protected', '--private']
end
