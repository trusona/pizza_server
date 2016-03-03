module Validators
  class CreatePizzaTopping
    attr_accessor :errors

    def initialize
      @errors = { pizza_topping: [] }
    end

    def run(topping_ids:, topping_id:)
      unless Rules::ElementIsUniqueInCollection.run(topping_ids, topping_id.to_i)
        @errors[:pizza_topping] = ["This pizza topping already exists"]
      else
        @errors.delete(:pizza_topping)
      end
      @errors
    end
  end
end
