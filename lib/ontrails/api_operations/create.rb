module Ontrails
  module APIOperations
    module Create
      module ClassMethods
        def create(params={}, api_key=nil)
          # Create blah
        end
      end

      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end
end
