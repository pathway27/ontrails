require File.expand_path('../client/contacts', __FILE__)

module Ontrails
  class Client
    include HTTParty
    include Contacts
    attr_accessor :app_id, :app_key

    def initialize(app_id=nil, app_key=nil)
      @app_id = app_id
      @app_key = app_key

      raise ArgumentError, "Missing required parameter: api_id" if @app_id.nil?
      raise ArgumentError, "Missing required parameter: api_key" if @app_key.nil?
    end

    def auth
      { 'app_id' => app_id, 'app_key' => app_key }
    end

    def request(url, data)
      data.merge!(auth)

      args = "appid=#{data[:app_id]}&key=#{data[:app_key]}&reqType=fetch&data=#{data[:data]}"
      response = HTTParty.post(url, body: args)
    end

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
