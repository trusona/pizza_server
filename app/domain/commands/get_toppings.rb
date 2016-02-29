module Commands
  class GetToppings
    class << self
      def run
        if block_given?
          yield( Topping.all )
        else
          Topping.all
        end
      end
    end
  end
end
