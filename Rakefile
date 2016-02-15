require 'rake'
require 'rspec/core/rake_task'

task default: %w(foodcritic spec:unit)

desc 'Run foodcritic'
task :foodcritic do
  sh 'foodcritic . -f any -f ~FC014 -f ~FC048'
end

namespace :spec do
  desc 'Run unit specs (ChefSpec)'
  RSpec::Core::RakeTask.new(:unit) do |t|
    t.pattern = 'spec/unit/**/*_spec.rb'
  end
end