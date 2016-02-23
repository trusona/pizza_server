module Commands
  class CreatePizzaTopping
    class << self
      def run pizza_id:, topping_id:
        Commands::GetPizza.run(name: pizza_id) do |found_pizza|
          yield(PizzaTopping.create!(
            pizza_id: found_pizza.id,
            topping_id: topping_id))
        end
      end
    end
  end
end
