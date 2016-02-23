class PizzasController < ApplicationController
  def index
    Commands::GetPizzas.run do |pizzas|
      render json: pizzas
    end
  end

  def create
    Commands::CreatePizza.run(pizza: pizza_params) do |pizza|
      render json: pizza.to_json
    end
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name)
  end
end
