module Ontrails
  module Configuration
    attr_accessor :app_id, :app_key

    def configure
      yield self
    end

    def options
      {'app_id' => app_id, 'app_key' => app_key}
    end
  end
end
