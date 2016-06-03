module Repositories
  class Pizza
  	@collection = {}
  
    def self.create attributes
      next_id = @collection.keys.length + 1
      @collection[next_id] = Models::Pizza.new(attributes.merge("id" => next_id))
    end

    def self.read id
      @collection[id]
    end

    def self.update id, attributes
      pizza = @collection[id]

      attributes.each do |key, value|
        pizza.send("#{key}=", value)
      end

      pizza
    end

    def self.delete(id)
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
