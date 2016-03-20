require "rails_helper"

RSpec.describe "Toppings", :type => :request do
  let(:attributes) { {"name" => "Pepperoni"} }

  describe "GET /toppings" do
    it 'Lists toppings' do
      post "/toppings", topping: attributes
      get "/toppings"
      expect(JSON.parse(response.body).count).to be == 1
    end
  end

  describe "POST /toppings" do
    it "Creates a topping with a new id" do
      post "/toppings", topping: attributes
      get "/toppings"
      expect(JSON.parse(response.body)).to be == [attributes.merge('id' => 1)]
    end
  end
end
