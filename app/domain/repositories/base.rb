module Repositories
  # Domain repositories have a CRUD+L (list) interfcace.

  class Base
    @collection = {}

    class << self
      def create attributes
        next_id = @collection.keys.length + 1
        @collection[next_id] = attributes.merge("id" => next_id)
      end

      def read id
        @collection[id]
      end

      def update id, attributes
        # NOT IMPLEMENTED
      end

      def delete(id)
        # NOT IMPLEMENTED
      end

      def list
        @collection.values
      end

      def reset
        @collection = {}
      end
    end
  end
end
