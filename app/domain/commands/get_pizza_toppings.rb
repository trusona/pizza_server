module Commands
  class GetPizzaToppings
    class << self
      def run name:
        GetPizza.run(name: name) do |pizza|
          yield(pizza.pizza_toppings)
        end
      end
    end
  end
end
