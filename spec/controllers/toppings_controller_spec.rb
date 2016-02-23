require "rails_helper"

RSpec.describe "Toppings Controller", :type => :request do
  describe "/toppings" do
    describe "POST" do
      it "" do
        Commands::GetToppings.run do |toppings|
          expect(toppings.count).to be == 0
        end
        post "/toppings", {topping: {name: "Pepperoni"}}
        Commands::GetToppings.run do |toppings|
          expect(toppings.count).to be == 1
        end
      end
    end
  end
end
