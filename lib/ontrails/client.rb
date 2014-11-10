#require 'client/contacts'
require 'ontrails/client/contacts'
require 'ontrails/client/forms'
require 'ontrails/client/products'

module Ontrails
  # init module as client...
  # auth credentials

  class Client
    include HTTParty
    base_uri 'https://api.ontraport.com/'

    include Contacts
    include Forms
    include Products
    attr_accessor :app_id, :app_key
    
    def api_base
      'https://api.ontraport.com/'
    end

    def initialize(app_id=nil, app_key=nil)
      @app_id  = app_id  || Ontrails.app_id 
      @app_key = app_key || Ontrails.app_key 
    end

    def auth
      {'app_id' => app_id, 'app_key' => app_key}
    end

    def request(url, data)
      raise ArgumentError, "Missing required parameter: api_id" if app_id.nil?
      raise ArgumentError, "Missing required parameter: api_key" if app_key.nil?

      data.merge!(auth)
      args = "appid=#{data['app_id']}&key=#{data['app_key']}&reqType=#{data[:reqtype]}&data=#{data[:data]}"

      id = data[:id]
      args += "&id=#{id}" unless id.nil?
      puts args
      response = HTTParty.post(url, body: args)
    end

    # create obj?
    def handle_response(response)
      xml = Nokogiri::XML(respose)
    
      if xml.at_css('result').content =~ /failure/i
        'failed'
        return
      end  
      response
    end

  end
end
