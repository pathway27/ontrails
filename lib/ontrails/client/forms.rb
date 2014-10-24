require 'json'
require 'nokogiri'

module Ontrails
  class Client
    module Forms

      def form_url
        api_base + 'fdata.php'
      end
      
      def xmlize(data)
        
      end

      # change id to ids
      # data auto xml
      # parse response xml
      # initalize obj with data
      # refresh/reload object?
      def form_fetch(id)
        params = {reqtype: "fetch", id: id}
        request(form_url, params)
      end


      #class Contact
        #params = {reqtype: "add", data: "<contact_id>#{id}</contact_id>"}
        #request(url, params)
      #end

    end
  end
end
