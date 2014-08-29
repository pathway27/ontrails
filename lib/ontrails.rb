class Ontrails
  # Say hi to the world!
  #
  # Example:
  #   >> Hola.hi("spanish")
  #   => hola mundo
  #
  # Arguments:
  #   language: (String)


  def self.hi(language)
    translator = Translator.new(language)
    translator.hi
  end
end

require 'ontrails/translator'
