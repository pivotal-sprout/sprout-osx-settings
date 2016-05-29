require 'rake'
require 'rspec/core/rake_task'
require 'foodcritic'

task default: %w(foodcritic spec:unit)

desc 'Run foodcritic'
FoodCritic::Rake::LintTask.new do |t|
  t.options[:fail_tags] = ['any', '~FC014', '~FC048']
end

namespace :spec do
  desc 'Run unit specs (ChefSpec)'
  RSpec::Core::RakeTask.new(:unit) do |t|
    t.pattern = 'spec/unit/**/*_spec.rb'
  end
end