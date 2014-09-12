require 'httparty'

require 'ontrails/client'

require 'ontrails/ontra_object'
require 'ontrails/api_resource'

require 'ontrails/api_operations/create'
require 'ontrails/api_operations/destroy'
require 'ontrails/api_operations/read'
require 'ontrails/api_operations/update'

require 'ontrails/contact'

module Ontrails
  class << self
    
    # add ssl certificates
    @api_base = 'https://api.ontraport.com/'

#    @@api_key = ''
    #@@api_secret = ''
    
    #def self.api_url

    #end

    #def self.request
      #raise AuthenticationError
    #end


    #def self.hi(language)
      #translator = Translator.new(language)
      #translator.hi
    #end
  end
end

require 'ontrails/translator'
