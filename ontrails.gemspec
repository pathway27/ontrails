lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ontrails/version'

Gem::Specification.new do |s|
  s.name        = 'ontrails'
  s.version     = Ontrails::VERSION
  s.date        = '2014-08-29'

  s.files       = ["lib/ontrails.rb",
                   "lib/ontrails/translator.rb"]
  
  s.summary     = 'Integrate the ontraport api in ruby.'
  s.description = 'A ruby inteface for the ontraport API, for use with rails.'
  s.authors     = ["Sreekara Chelamalla"]
  s.email       = ['sreechela27@gmail.com', 'pathway27@gmail.com']
  s.files       = ["lib/ontrails.rb"]
  s.homepage    =
    'http://rubygems.org/gems/ontrails'
  s.license     = 'MIT'
end
