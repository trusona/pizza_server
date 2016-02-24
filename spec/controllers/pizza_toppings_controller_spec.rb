require "rails_helper"

RSpec.describe "Toppings Controller", :type => :request do
  let!(:pizza) do
    Commands::CreatePizza.run({pizza: {name: "Belleboche"}}) do |pizza|
      return pizza
    end
  end

  let!(:topping) do
    Commands::CreateTopping.run(topping: {name: "Pepperoni"}) do |topping|
      return topping
    end
  end

  describe "/pizzas/x/toppings" do
    describe "GET" do
      it 'lists pizza toppings' do
        post "/pizzas/Belleboche/toppings",
          pizza_id:   pizza.id,
          topping_id: topping.id
        get "/pizzas/Belleboche/toppings"
        expect(JSON.parse(response.body).map{|topping| topping["name"]}).to include("Pepperoni")
      end
    end

    describe "POST" do
      it 'adds a topping to a pizza', :focus do
        post "/pizzas/Belleboche/toppings",
          pizza_id:   pizza.id,
          topping_id: topping.id

        Commands::GetPizza.run(name: "Belleboche") do |pizza|
          expect(pizza.pizza_toppings.map(&:name)).to include("Pepperoni")
        end
      end
    end
  end
end
