require 'json'
require 'nokogiri'

module Ontrails
  class Client
    module Contacts

      def contacts_url
        api_base + 'cdata.php'
      end
      
      def xmlize(data)
        Gyoku.xml data
      end

      # change id to ids
      # data auto xml
      # parse response xml
      # initalize obj with data
      # refresh/reload object?
      def contact_fetch(id)
        params = {reqtype: "fetch", data: "<contact_id>#{id}</contact_id>"}
        request(contacts_url, params)
      end

      def contact_add(data)
        # fields.each do |field, value|
        #  Gyoku.xml(:field => "#{value}", :attributes! => {:field => { :name => "#{field}" }})
        # end 
        xmlize(data)
        params = {reqtype: "add", data: data}
        request(contacts_url, params)
        # response
      end

      def contact_update(id, data)
        # need to add contact id
        xmlize(data)
        params = {reqtype: "update", data: data, id: id}
        request(contacts_url, params)
      end
      
#      class Contact
        #params = {reqtype: "add", data: "<contact_id>#{id}</contact_id>"}
        #request(url, params)
      #end

    end
  end
end
