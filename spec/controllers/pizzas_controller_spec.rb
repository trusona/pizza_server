require "rails_helper"

RSpec.describe "Pizzas Controller", :type => :request do
  describe "/pizzas" do
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

      it 'returns json' do
        post "/pizzas", {"pizza" => {"name" => "Belleboche"}}
          expect(JSON.parse(response.body)).to be == {"id"=>1, "name"=>"Belleboche"}
      end
    end
  end
end
