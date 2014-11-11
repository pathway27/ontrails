require 'rubygems'

require 'httparty'
#require 'gyoku'
#Dir[File.dirname(__FILE__) + '/ontrails/*.rb'].each do |file|
  #require file
#end

require 'ontrails/version'
require 'ontrails/configuration'
require 'ontrails/client'
require 'ontrails/contact'

require 'ontrails/ontra_object'
require 'ontrails/api_resource'

require 'ontrails/api_operations/create'
require 'ontrails/api_operations/destroy'
require 'ontrails/api_operations/read'
require 'ontrails/api_operations/update'


module Ontrails
  extend Configuration

  @@api_base = 'https://api.ontraport.com/'

  def self.api_base
    @@api_base
  end

  def self.client(options={})
    Ontrails::Client.new(options)
  end

  def self.method_missing(method, *args, &block)
    return super unless client.respond_to?(method)
    client.send(method, *args, &block)
  end

  def self.respond_to?(method, include_all=false)
    return client.respond_to?(method, include_all) || super
  end
  
  class << self
    # add ssl certificates
    # Ontrails.configure do |config|
    #   config.app_id  =  'x'
    #   config.app_key =  'x'
    # end
    # or secrets.yml
    @@api_base = 'https://api.ontraport.com/'
  end
end

require 'ontrails/translator'
