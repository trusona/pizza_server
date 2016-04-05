require "rails_helper"

RSpec.describe "Toppings", :type => :request do
  let(:topping) { { name: "Pepperoni" } }

  describe "GET /toppings" do
    it 'Lists toppings' do
      post "/toppings", topping: topping
      get "/toppings"
      expect(JSON.parse(response.body).count).to eq 1
    end
  end

  describe "POST /toppings" do
    it "Creates a topping with a new id" do
      post "/toppings", topping: topping
      get "/toppings"
      expect(JSON.parse(response.body)).to eq [topping[:name]]
    end
  end
end
