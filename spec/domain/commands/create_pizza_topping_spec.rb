require "rails_helper"

module Commands
  describe CreatePizzaTopping do
    subject { described_class.new }
    let(:pizza) do
      CreatePizza.new.run(pizza: {
        name: "belleboche", description: "Pizza Description"
      })
    end
    let(:topping)  { CreateTopping.new.run(topping: {name: "pepperoni"}) }
    let(:toppings) { GetPizzaToppings.new.run(id: pizza.id) }
    let(:duplicate) do
      CreatePizzaTopping.new.run(pizza_id: pizza.id, topping_id: topping.id)
    end
    let(:error_message) { "This pizza topping already exists" }

    subject! do
      CreatePizzaTopping.new.run(pizza_id: pizza.id, topping_id: topping.id)
    end

    describe '#run' do
      it 'should create a pizza topping' do
        expect(toppings).to be == [subject[:object]]
      end

      it 'should not allow duplicate toppings on a pizza' do
        expect(duplicate[:errors]).to be == { pizza_topping: [error_message] }
      end
    end
  end
end
