require 'json'

module Ontrails
  class Client
    module Contacts

      def contacts_url
        api_base + 'cdata.php'
      end
      
      def xmlize(data)
        Gyoku.xml data
      end

      # initalize obj with data
      # refresh/reload object?
      def contact_fetch(id)
        params = {reqtype: "fetch", data: "<contact_id>#{id}</contact_id>"}
        request(contacts_url, params)
      end

      def contact_add(data)
        xml_for_contact(data)
        params = {reqtype: "add", data: data}
        request(contacts_url, params)
      end

      def contact_update(id, data)
        xml_for_contact(data)
        params = {reqtype: "update", data: data, id: id}
        request(contacts_url, params)
      end

      private
       # params to xml?
       def xml_for_contact(options)
         attrs = {}
         id = options.delete('id')
         attrs[:id] = id if id
         xml = Builder::XmlMarkup.new

         xml.contact(attrs) do
           options.each_key do |group_tag|
             xml.Group_Tag(name: group_tag) do
               options[group_tag].each do |field, value|
                 xml.field(value, name: field)
               end
             end
           end
         end
       end

       def xml_for_search(options)
         if options.is_a?(Hash)
           options = [options]
         end

         xml = Builder::XmlMarkup.new
         xml.search do
           options.each do |option|
             xml.equation do
               xml.field option[:field]
               xml.op option[:op]
               xml.value option[:value]
             end
           end
         end

       end 

    end
  end
end
