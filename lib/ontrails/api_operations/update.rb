module Ontrails
  module APIOperations
    module Update
      module ClassMethods
        def update(params={}, api_key=nil)
          # Create blah
        end
      end

      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end
end
