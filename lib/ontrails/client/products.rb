module Ontrails
  class Client
    module Products

      def products_url
        api_base + 'pdata.php'
      end

      def product_purchase_history(search_data)
        data = xml_for_purchase_history(search_data).gsub('"', "'")
        params = {reqtype: "purchase_history", data: data}
        request(products_url, params)
      end

      def product_search_purchase(search_data)
        data = xml_for_purchase_history(search_data).gsub('"', "'")
        params = {reqtype: "search_purchase", data: data}
        request(products_url, params)
        # xmlize search stuff
        # request
      end

      def xml_for_purchase_history(options)
        xml = Builder::XmlMarkup.new
        xml.purchase_history do
          options.each do |option, value|
            xml.tag! option, value
          end
        end
      end

    end
  end
end
