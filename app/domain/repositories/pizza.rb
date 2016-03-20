module Repositories
  class Pizza
    @collection = {}

    def self.collection
      @collection
    end

    def self.collection= value
      @collection = value
    end

    def create! attributes
      Pizza.collection[next_id] = attributes.merge("id" => next_id)
    end

    def all
      Pizza.collection.values
    end

    def destroy_all
      Pizza.collection = {}
    end

    def find(id)
      Pizza.collection[id]
    end

    private

    def next_id
      Pizza.collection.keys.length + 1
    end
  end
end
