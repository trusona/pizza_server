require "rails_helper"

RSpec.describe "Toppings Controller", :type => :request do
  let(:belleboche) do
    {"pizza" => { "name" => "Belleboche" }}
  end
  let(:pepperoni_topping) {{ "name" => "Pepperoni" }}
  let(:sausage_topping)   {{ "name" => "Sausage" }}

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
    describe "POST" do
      it 'adds a topping to a pizza', :focus do
        post "/pizzas/Belleboche/toppings",
          pizza_id: pizza.id,
          topping_id:  topping.id
        Commands::GetPizza.run(name: "Belleboche") do |pizza|
          expect(pizza.pizza_toppings.map(&:name)).to include("Pepperoni")
        end
      end

      it 'returns json' do
        post "/pizzas/Belleboche/toppings",
          pizza_id: "Belleboche",
          topping_id: topping.id
        expect(JSON.parse(response.body)).to be == {"id"=>1, "pizza_id"=>1, "topping_id"=>1}
      end
    end
  end
end
