require "rails_helper"

RSpec.describe "Toppings", :type => :request do
  describe "/toppings" do

    describe "GET" do
      it do
        post "/toppings", {topping: {name: "Pepperoni"}}
        get "/toppings"
        expect(JSON.parse(response.body)).to be == [{ "name"=>"Pepperoni", "id"=>1 }]
      end
    end

    describe "POST" do
      it "Creates a topping" do
        post "/toppings", {topping: {name: "Pepperoni"}}
        get "/toppings"
        expect(JSON.parse(response.body)).to be == [{ "id"=>1, "name"=>"Pepperoni" }]
      end
    end
  end
end
