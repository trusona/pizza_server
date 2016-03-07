require "rails_helper"

RSpec.describe "Toppings", :type => :request do
  describe "/toppings" do

    describe "GET" do
      let(:toppings) { Commands::GetToppings.new.run }

      before do
        post "/toppings", {topping: {name: "Pepperoni"}}
      end

      it do
        get "/toppings"
        expect(response.body).to be == toppings.to_json
      end
    end

    describe "POST" do
      it "Creates a topping" do
        post "/toppings", {topping: {name: "Pepperoni"}}
        expect(Commands::GetToppings.new.run.count).to be == 1
      end
    end
  end
end
