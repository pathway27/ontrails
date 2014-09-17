require 'json'
require 'nokogiri'

module Ontrails
  class Client
    module Contacts
      
      def url
        api_base + 'cdata.php'
      end

      def contact_fetch(id)
        params = {reqtype: "fetch", data: "<contact_id>#{id}</contact_id>"}
        request(url, params)
      end 

    end
  end
end
