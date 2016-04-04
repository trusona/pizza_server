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
  end

  describe "POST /pizzas" do
    it 'creates toppings' do
      post "/pizzas", pizza: attributes
      get "/toppings"
      expect(JSON.parse(response.body)).to be == ["a", "b", "c"]
    end

    context 'with errors' do
      let(:attributes_no_name) {
        { "description" => "Pepperoni, Mushroom, Sausage",
          "toppings"    => ['a', 'b', 'c']} }

      it 'Returns a 500' do
        post "/pizzas", pizza: attributes_no_name
        expect(response.status).to be == 500
      end

      it 'Has errors in the body' do
        post "/pizzas", pizza: attributes_no_name
        expect(JSON.parse(response.body)).to be == {"name"=>["can't be blank"]}
      end
    end
  end

  describe "GET /pizzas/:id" do
    it 'returns a pizza' do
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
