require 'rake'

task default: %w(foodcritic)

desc 'Run foodcritic'
task :foodcritic do
  sh 'foodcritic . -f any -f ~FC014 -f ~FC048'
end
