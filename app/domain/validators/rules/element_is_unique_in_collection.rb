module Validators
  module Rules
    class ElementIsUniqueInCollection
      def self.run(collection, element)
        return !collection.include?(element)
      end
    end
  end
end
