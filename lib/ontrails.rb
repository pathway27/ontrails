class Ontrails
  # Say hi to the world!
  #
  # Example:
  #   >> Hola.hi("spanish")
  #   => hola mundo
  #
  # Arguments:
  #   language: (String)
  
  # add ssl certificates
  @api_base = 'https://api.ontraport.com/'

  @@api_key = ''
  @@api_secret = ''
  
  def self.api_url

  end

  def self.request
    raise AuthenticationError
  end


  def self.hi(language)
    translator = Translator.new(language)
    translator.hi
  end
end

require 'ontrails/translator'
