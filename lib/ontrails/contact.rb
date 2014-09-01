module Ontrails
  class Contact < APIResource
    include Ontrails::APIOperations::Create
    include Ontrails::APIOperations::Destroy
    include Ontrails::APIOperations::Read
    include Ontrails::APIOperations::Update

    def url
      'https://api.ontraport.com/cdata.php'
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
