module Ontrails
  class Contact < APIResource
    include HTTParty
    include Ontrails::APIOperations::Create
    include Ontrails::APIOperations::Destroy
    include Ontrails::APIOperations::Read
    include Ontrails::APIOperations::Update

    def self.url
      api_base + 'cdata.php'
    end
    
    def contact_fetch(data)
      options = { reqType: "fetch", data: data }
      response = HTTParty.post(url, options)
    end 
 
    # Request: key
    # Return: Contact record template
    # Required Data: None
    def key

    end
    
    def search
    end

    def add_section
    end

    def get_deleted_contacts
    end
  end
end
