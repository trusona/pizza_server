require "rails_helper"

RSpec.describe "Pizzas", :type => :request do
  let(:attributes) {
    { "name"        => "Belleboche",
      "description" => "Pepperoni, Mushroom, Sausage",
      "toppings"    => ['a', 'b', 'c']} }

  describe "GET /pizzas" do
    it 'Lists pizzas' do
      post "/pizzas", pizza: attributes
      get "/pizzas"
      expect(JSON.parse(response.body).count).to be == 1
    end

    it 'creates toppings' do
      post "/pizzas", pizza: attributes
      get "/toppings"
      expect(JSON.parse(response.body)).to be == ["a", "b", "c"]
    end
  end

  describe "GET /pizzas/:id" do
    it do
      post "/pizzas", pizza: attributes
      get  "/pizzas/#{JSON.parse(response.body)["id"]}"
      expect(JSON.parse(response.body)).to be == attributes.merge("id" => 1)
    end
  end

  describe "POST /pizzas" do
    it 'Creates a pizza with a new id' do
      pizza = post("/pizzas", pizza: attributes)
      expect(JSON.parse(response.body).keys).to include 'id'
    end
  end
end
