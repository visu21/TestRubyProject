require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
  t.profile = 'default'
end

# Cucumber::Rake::Task.new(:dev_cars) do |t|
#   t.profile = 'dev_cars'
# end
#
# Cucumber::Rake::Task.new(:dev_3) do |t|
#   t.profile = 'dev_3'
# end
#
# Cucumber::Rake::Task.new(:dev_2) do |t|
#   t.profile = 'dev_2'
# end

task :default => :features