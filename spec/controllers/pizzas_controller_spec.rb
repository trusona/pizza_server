require "rails_helper"

RSpec.describe "Pizzas API", :type => :request do
  let(:pizza_attributes) { {
    "name" => "Belleboche",
    "description" => "Pepperoni, Mushroom, Sausage" } }

  describe "GET /pizzas" do
    let!(:pizza) { Commands::CreatePizza.new.run(pizza: pizza_attributes) }
    before { get "/pizzas" }

    it 'Lists pizzas' do
      expect(response.body).to be == [pizza].to_json
    end
  end

  describe "POST /pizzas" do
    before { post "/pizzas", { "pizza" => pizza_attributes } }
    it 'Creates a pizza' do
      expect(Commands::GetPizzas.run.count).to be == 1
    end
  end
end
