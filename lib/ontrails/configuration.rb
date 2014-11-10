module Ontrails
  module Configuration
    attr_accessor :app_id, :app_key

    def self.configuration
      @configuration ||= Configuration.new
    end

    def self.configure
      yield(configuration) if block_given?
    end
  end
end
