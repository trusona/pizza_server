require "rails_helper"

describe Commands::CreatePizzaTopping do
  subject { described_class.new }
  describe '#run' do
    it 'should create a pizza topping' do
      pizza   = Commands::CreateTopping.new.run(topping: {name: "pepperoni"})
      topping = Commands::CreatePizza.new.run(pizza: {name: "belleboche", description: "pepperoni, mushroom, sausage"})
      result  = Commands::CreatePizzaTopping.new.run(pizza_id: pizza.id, topping_id: topping.id)
      expect(Commands::GetPizzaToppings.run(id: pizza.id)).to be == [result[:object]]
    end

    it 'should not allow duplicate toppings on a pizza' do
      pizza   = Commands::CreateTopping.new.run(topping: {name: "pepperoni"})
      topping = Commands::CreatePizza.new.run(
        pizza: {
          name:        "belleboche",
          description: "pepperoni, mushroom, sausage"})

      Commands::CreatePizzaTopping.new.run(pizza_id: pizza.id, topping_id: topping.id)
      result = Commands::CreatePizzaTopping.new.run(pizza_id: pizza.id, topping_id: topping.id)
      expect(result [:errors]).to be == {:pizza_topping=>["This pizza topping already exists"]}
    end
  end
end
