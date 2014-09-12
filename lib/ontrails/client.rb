require 'nokogiri'

module Ontrails
  class Client
    #include Contact
    attr_accessor :app_id, :app_key

    def initialize(app_id, app_key)
      @app_id = app_id
      @app_key = app_key

      raise ArgumentError, "Missing required parameter: api_id" if @app_id.nil?
      raise ArgumentError, "Missing required parameter: api_key" if @app_key.nil?
    end

    def auth
      { 'Appid' => app_id, 'Key' => app_key }
    end

    def request(method, path, options)
      options[:body].merge!(auth)
      handle_response(Ontrails::Request.send(method, path, options))
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
