module Ontrails
  class APIResource < OntraObject
    def self.api_base
      'https://api.ontraport.com/'
    end

    def self.class_name
      self.name.split('::')[-1]
    end

    def self.url
      if self == APIResource
        raise NotImplementedError.new('APIResource is an abstract class.  You should perform actions on its subclasses (Charge, Customer, etc.)')
      end
      api_base
    end

    def url
      self.class.url
    end

    def refresh
      response = Ontrails.request(url, @app_id, @app_key, @retrieve_options)
      refresh_from(response)
      self
    end

    def self.retrieve(id, app_id=nil, app_key=nil)
      instance = self.new(id, app_id, app_key)
      instance.refresh
      instance
    end
  end
end
