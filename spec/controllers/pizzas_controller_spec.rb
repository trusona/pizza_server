require "rails_helper"

RSpec.describe "Pizzas Controller", :type => :request do
  describe "/pizzas" do
    describe "GET" do
      it 'lists pizzas' do
        post "/pizzas", {"pizza" => {"name" => "Belleboche"}}
        get "/pizzas"
        expect(JSON.parse(response.body).first["name"]).to be == "Belleboche"
      end
    end

    describe "POST" do
      it 'creates a pizza' do
        Commands::GetPizzas.run do |pizzas|
          expect(pizzas.count).to be == 0
        end

        post "/pizzas", {"pizza" => {"name" => "Belleboche"}}

        Commands::GetPizzas.run do |pizzas|
          expect(pizzas.count).to be == 1
        end
      end
    end
  end
end
