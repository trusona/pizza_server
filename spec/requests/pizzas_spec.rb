require "rails_helper"

RSpec.describe "Pizzas", :type => :request do
  let(:desc)             { "Pepperoni, Mushroom, Sausage" }
  let(:pizza_attributes) { {"name" => "Belleboche", "description" => desc, "toppings" => ['a', 'b', 'c']} }

  describe "GET /pizzas" do
    it 'Lists pizzas' do
      post "/pizzas", { "pizza" => pizza_attributes }
      get "/pizzas"
      expect(JSON.parse(response.body)).to be == [{
        "id"          => 1,
        "name"        => "Belleboche",
        "description" => "Pepperoni, Mushroom, Sausage",
        "toppings"    => ['a', 'b', 'c']
      }]
    end
  end

  describe "POST /pizzas" do
    it 'Creates a pizza' do
      post "/pizzas", { "pizza" => pizza_attributes }
      get "/pizzas"
      expect(JSON.parse(response.body)).to be == [{
        "id"          => 2,
        "name"        => "Belleboche",
        "description" => "Pepperoni, Mushroom, Sausage",
        "toppings"    => ['a', 'b', 'c']
      }]
    end
  end
end
