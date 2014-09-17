require 'json'
require 'nokogiri'

module Ontrails
  class Client
    module Contacts
      
      def self.url
        api_base + 'cdata.php'
      end

      def self.contact_fetch(id)
        params = {reqtype: "fetch", data: "<contact_id>#{id}</contact_id>"}
        Ontrails::Client.request(url, params)
      end 

    end
  end
end
