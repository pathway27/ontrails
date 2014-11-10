module Ontrails
  module Configuration
    def configure
      yield self
    end
  end
end
