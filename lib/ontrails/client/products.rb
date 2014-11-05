module Ontrails
  class Client
    module Products

      def products_url
        api_base + 'pdata.php'
      end

      def product_purchase_history(search_data)
        data = search_data
        request(products_url, data)
      end

      def product_search_purchase(search_data)
        data = xml_for_search(search_data).gsub('"', "'")
        params = {reqtype: "search_purchase", data: data}
        request(products_url, data)
        # xmlize search stuff
        # request
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
