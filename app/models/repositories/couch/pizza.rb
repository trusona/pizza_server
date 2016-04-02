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

      def initialize document = Document
        @document = document
      end

      def create attributes
        document = Document.new attributes
        CouchPotato.database.save_document! document
        domain_field_mapping(document)
      end

      def all
        CouchPotato.database.view(Document.all).map do |document|
          domain_field_mapping(document)
        end
      end

      private

      def domain_field_mapping document
        {
          description: document.description,
          name:        document.name,
          topping:     document.toppings,
          id:          document._id
        }
      end
    end
  end
end
