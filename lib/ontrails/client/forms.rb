require 'json'

module Ontrails
  class Client
    module Forms

      def form_url
        api_base + 'fdata.php'
      end
      
      # change id to ids
      # parse response xml
      # initalize obj with data
      def form_fetch(id)
        params = {reqtype: "fetch", id: id}
        request(form_url, params)
      end
    end
  end
end
