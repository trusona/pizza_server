module Commands
  class GetToppings
    class << self
      def run
        if block_given?
          yield( Repositories::Topping.all )
        else
          Repositories::Topping.all
        end
      end
    end
  end
end
