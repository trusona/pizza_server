require "rails_helper"

RSpec.describe "Pizza Toppings", :type => :request do
  let!(:pizza) do
    @pizza ||= Commands::CreatePizza.new.run({pizza: {name: "Belleboche"}})
  end

  let!(:topping) do
    @topping ||= Commands::CreateTopping.new.run(topping: { name: "Pepperoni"} )
  end

  describe "/pizzas/x/toppings" do
    describe "GET" do
      it 'lists pizza toppings' do
        post "/pizzas/#{pizza.id}/toppings", topping_id: topping.id
        get "/pizzas/#{pizza.id}/toppings"
        expect(response.body).to be == Commands::GetPizzaToppings.new.run(id: pizza.id).map(&:to_json).to_json
      end
    end

    describe "POST" do
      it 'adds a topping to a pizza', :focus do
        post "/pizzas/#{pizza.id}/toppings", topping_id: topping.id
        expect(Commands::GetPizza.new.run(id: pizza.id).pizza_toppings.map(&:name)).to be == ["Pepperoni"]
      end

      it 'returns errors on fail' do
        post "/pizzas/#{pizza.id}/toppings", topping_id: topping.id
        post "/pizzas/#{pizza.id}/toppings", topping_id: topping.id
        expect(response.body).to be == {
          "object"=>{"id"=>nil, "pizza_id"=>pizza.id, "topping_id"=>topping.id},
          "errors"=>{"pizza_topping"=> ["This pizza topping already exists"]}}.to_json
      end
    end
  end
end
