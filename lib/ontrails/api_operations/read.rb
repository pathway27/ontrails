module Ontrails
  module APIOperations
    module Read
      module ClassMethods
        def list(params={}, api_key=nil)
          # Create blah
        end

        def fetch(params={}, api_key=nil)

        end
      
        def search

        end

      end

      def self.included(base)
        base.extend(ClassMethods)
      end
    end
  end
end
