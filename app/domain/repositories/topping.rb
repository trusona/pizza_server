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
      klass.collection[next_id] = attributes.merge("id" => next_id)
    end

    def all
      klass.collection.values
    end

    def destroy_all
      klass.collection = {}
    end

    def find(id)
      klass.collection[id]
    end

    private

    def klass
      self.class
    end

    def next_id
      klass.collection.keys.length + 1
    end
  end
end
