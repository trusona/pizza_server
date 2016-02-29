require "rails_helper"

RSpec.describe "Toppings Controller", :type => :request do
  let!(:pizza) do
    Commands::CreatePizza.run({pizza: {name: "Belleboche"}})
  end

  let!(:topping) do
    Commands::CreateTopping.run(topping: {name: "Pepperoni"})
  end

  describe "/pizzas/x/toppings" do
    before do
      post "/pizzas/#{pizza.id}/toppings", pizza_id: pizza.id, topping_id: topping.id
    end

    describe "GET" do
      it 'lists pizza toppings' do
        get "/pizzas/#{pizza.id}/toppings"
        expect(response.body).to be == Commands::GetPizzaToppings.run(id: pizza.id).map(&:to_json).to_json
      end
    end

    describe "POST" do
      it 'adds a topping to a pizza', :focus do
        expect(Commands::GetPizza.run(id: pizza.id).pizza_toppings.map(&:name)).to include("Pepperoni")
      end
    end
  end
end
