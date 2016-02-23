module Commands
  class GetToppings
    class << self
      def run
        yield( Topping.all )
      end
    end
  end
end
