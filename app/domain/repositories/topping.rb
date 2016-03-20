module Repositories
  class Topping
    @collection = {}

    def self.collection
      @collection
    end

    def self.collection= value
      @collection = value
    end

    def create!(attributes)
      Topping.collection[next_id] = attributes.merge("id" => next_id)
    end

    def all
      Topping.collection.values
    end

    def destroy_all
      Topping.collection = {}
    end

    def find(id)
      Topping.collection[id]
    end


    private

    def next_id
      Topping.collection.keys.length + 1
    end
  end
end
