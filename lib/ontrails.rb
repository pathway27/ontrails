require 'rubygems'

require 'httparty'
require 'gyoku'
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
  #extend Configuration

  @@api_base = 'https://api.ontraport.com/'

  def self.api_base
    @@api_base
  end

  def self.configure

  end

#  @config = {
    #:app_id,
    #:app_key
  #}

  class << self
    
    # add ssl certificates
    # Ontrails.configure do |config|
    #   config.app_id  =  'x'
    #   config.app_key =  'x'
    # end
    # or secrets.yml
    @@api_base = 'https://api.ontraport.com/'

#    def configure
      #yield self
      #true
#    end
    
#    class << self
      #attr_accessor :app_id, :app_key
    #end

    #def self.api_url(url='')
      #@api_base + url
    #end

    #def self.request(url, app_id,  app_key, req_type, data={}, f_add=false, return_id=1, count=false, get_ids=false)
      #raise AuthenticationError.new('No APP ID provided.') unless app_id ||= @app_id
      #raise AuthenticationError.new('No APP KEY provided.') unless app_key ||= @app_key

      #url = api_url(url)
      #args = "appid=#{appid}&key=#{app_key}&reqType=#{req_type}&data=#{data}"
      #begin 
        #response = HTTParty.post(url, body: args)
      #rescue Exception => e
        #puts e
      #end

      #handle_response(response)
    #end

    #def handle_response response
      #xml = Nokogiri::XML(response)

      #if xml.at_css('result').content =~ /failure/i
        #puts 'error'
      #end

      #response
    #end

  end
end

require 'ontrails/translator'
