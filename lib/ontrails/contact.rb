require 'json'
require 'nokogiri'

module Ontrails
  class Contact
    
    def self.url
      Ontrails.api_base + 'cdata.php'
    end

    def self.fetch(id)
      params = {reqtype: "fetch", data: "<contact_id>#{id}</contact_id>"}
      request(url, params)
    end

    def self.add(data)
      params = {reqtype: "add", data: xmlize(data)}
      request(url, params)
    end

    private

      def xmlize(data)
        Nokogiri::XML(data)
      end
  end
end
