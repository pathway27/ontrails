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

      # contacts_add(
      #   { 'Contact Information' => {'First Name' => 'Turtle', 'Last Name' => 'Jones', 'E-Mail' => 'mrturtles@example.com'} })
      def contact_add(data)
        xmlized_data = xml_for_contact(data).gsub('"', "'")
        params = {reqtype: "add", data: xmlized_data}
        request(contacts_url, params)
      end

      # ID must be in data
      def contact_update(data)
        id = data[:id]
        return if id.nil?
        xmlized_data = xml_for_contact(data).gsub('"', "'")
        params = {reqtype: "update", data: xmlized_data}
        request(contacts_url, params)
      end

      def contact_search(data)
        xml = xml_for_search(data)
        params = {reqtype: "search", data: xml}
        request(contacts_url, params)
      end

       # params to xml?
       # returns escaped strings
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
