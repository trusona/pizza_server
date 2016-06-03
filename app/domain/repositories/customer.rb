module Repositories
  class Customer
  	@collection = {}
  
    def self.create attributes
      next_id = @collection.keys.length + 1
      @collection[next_id] = Models::Customer.new(attributes.merge("id" => next_id))
    end

    def self.read id
      @collection[id]
    end

    def self.update id, attributes
      # NOT IMPLEMENTED
    end

    def self.delete id
      # NOT IMPLEMENTED
    end

    def self.list
      @collection.values
    end

    def self.reset
      @collection = {}
    end
  end
end
