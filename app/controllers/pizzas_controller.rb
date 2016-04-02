class PizzasController < ApplicationController
  def index
    Cmd[:get_pizzas].call do |result|
      result.success do |pizzas|
        render json: pizzas
      end
    end
  end

  def create
    Cmd[:create_pizza].call(pizza: pizza_params) do |result|
      result.success do |pizza|
        Cmd[:create_toppings_from_pizza].call(pizza: pizza)
        render json: pizza
      end
    end
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :description, :toppings => [])
  end
end
