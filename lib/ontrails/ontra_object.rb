module Ontrails
  class OntraObject
    include Enumerable
      
    attr_accessor :app_id, :app_key
    @@permanent_attributes = Set.new([:app_id, :app_key, :id])

#    if method_defined?(:id)
      #undef :id
    #end

    def initalize(id=nil, app_id=nil, app_key=nil)
      @retrieve_options = {}

      @app_id = app_id
      @app_key = app_key

      @values = {}
      # This really belongs in APIResource, but not putting it there allows us
      # to have a unified inspect method
      @unsaved_values = Set.new
      @transient_values = Set.new
      @values[:id] = id if id
    end


    def refresh_from(values, app_id, app_key)
      @app_id = app_id
      @app_key = app_key

      Set.new
    end
  end
end
