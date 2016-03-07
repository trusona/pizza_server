module Commands
  class CreatePizzaTopping
    def initialize(repo: Repositories::PizzaTopping)
      @validator = Validators::CreatePizzaTopping.new
      @repo      = repo
    end

    def run pizza_id:, topping_id:
      result = {
        object: @repo.new(pizza_id: pizza_id, topping_id: topping_id),
        errors: @validator.run(topping_ids: Commands::GetPizzaToppings.new.run(id: pizza_id).map(&:topping_id), topping_id: topping_id) }

      if result[:errors].present?
        return result
      end

      result.merge({object: @repo.create(pizza_id: pizza_id, topping_id: topping_id)})
    end
  end
end
