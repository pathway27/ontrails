module Ontrails
  class Product < APIResource
    include Ontrails::APIOperations::Create
    include Ontrails::APIOperations::Destroy
    include Ontrails::APIOperations::Read
    include Ontrails::APIOperations::Update

    def url
      'https://api.ontraport.com/pdata.php'
    end


    def sale

    end

    def refund

    end

    def search_purchase

    end

    def purchase_history

    end

  end
end
