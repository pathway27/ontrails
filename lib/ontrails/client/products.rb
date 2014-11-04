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
        data = xml_for_search(search_data)
        params = {reqtype: "search_purchase", data: data}
        request(products_url, data)
        # xmlize search stuff
        # request
      end


      def xml_for_search(options)
        xml = Builder::XmlMarkup.new

        xml.search do
          xml.equation do
            # syntax here
            # eq
          end
        end
      end

    end
  end
end
