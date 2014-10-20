require 'json'
require 'nokogiri'

module Ontrails
  class Client
    module Contacts

      def url
        api_base + 'cdata.php'
      end
      
      def xmlize(data)

      end

      # change id to ids
      # data auto xml
      # parse response xml
      # initalize obj with data
      # refresh/reload object?
      def contact_fetch(id)
        params = {reqtype: "fetch", data: "<contact_id>#{id}</contact_id>"}
        request(url, params)
      end

      def contact_add(data)
        # xmlize(data)
        
        params = {reqtype: "add", data: data.to_xml}
        request(url, params)
        # initailize contact obj.
      end
      
#      class Contact
        #params = {reqtype: "add", data: "<contact_id>#{id}</contact_id>"}
        #request(url, params)
      #end

    end
  end
end
