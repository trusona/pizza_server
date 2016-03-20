class PizzasController < ApplicationController
  def index
    commands[:getPizzas].run do |pizzas|
      render json: pizzas
    end
  end

  def create
    commands[:createPizza].run(pizza: pizza_params) do |pizza|
      render json: pizza
    end
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :description, :toppings => [])
  end
end
