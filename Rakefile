require 'rubygems'

desc "Run tests"
task :default => :spec
task :test => :spec

desc "Open an irb session preloaded with this library"
task :console do
    sh "irb -rubygems -I lib -r ontrails.rb"
end
