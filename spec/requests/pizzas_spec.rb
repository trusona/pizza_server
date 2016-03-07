require "rails_helper"

RSpec.describe "Pizzas", :type => :request do
  let(:desc)             { "Pepperoni, Mushroom, Sausage" }
  let(:pizza_attributes) { {"name" => "Belleboche", "description" =>  desc} }

  describe "GET /pizzas" do
    let(:pizza)        { Commands::CreatePizza.new.run(pizza: pizza_attributes) }
    let!(:pizzas_json) { [pizza].to_json }

    it 'Lists pizzas' do
      get "/pizzas"
      expect(response.body).to be == pizzas_json
    end
  end

  describe "POST /pizzas" do
    it 'Creates a pizza' do
      post "/pizzas", { "pizza" => pizza_attributes }
      expect(Commands::GetPizzas.new.run.count).to be == 1
    end
  end
end
