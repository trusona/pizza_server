module Repositories
  module Couch
    class Pizza
      class Document
        include CouchPotato::Persistence
        property :description
        property :name
        property :toppings

        view :all, :key => :id
      end

      def initialize(document=Document)
        @document = document
      end

      def create!(attributes)
        document = Document.new attributes
        CouchPotato.database.save_document! document
        document
      end

      def all
        CouchPotato.database.view Document.all
      end
    end
  end
end
