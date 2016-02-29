module Commands
  class CreatePizzaTopping
    class << self
      def run pizza_id:, topping_id:
        yield(PizzaTopping.create!(
          pizza_id: pizza_id,
          topping_id: topping_id))
      end
    end
  end
end
