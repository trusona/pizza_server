module Repositories
  # Domain repositories have a CRUD+L (list) interfcace.
  class InMemory
    def create attributes
      klass.collection[next_id] = attributes.merge("id" => next_id)
    end

    def read(id)
      klass.collection[id]
    end

    def update(id, attributes)
      # NOT IMPLEMENTED
    end

    def delete(id)
      # NOT IMPLEMENTED
    end

    def list
      klass.collection.values
    end

    def reset
      klass.collection = {}
    end

    # CLASS METHODS

    @collection = {}

    def self.collection
      @collection
    end

    def self.collection= value
      @collection = value
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
