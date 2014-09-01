module Ontrails
  module APIOperations
    module Destroy
      module ClassMethods
        def destroy(params={}, api_key=nil)
          # Create blah
        end
      end

      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end
end
