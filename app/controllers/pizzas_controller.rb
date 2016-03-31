class PizzasController < ApplicationController
  def index
    DomainFun[:get_pizzas].call do |pizzas|
      render json: pizzas
    end
  end

  def create
    DomainFun[:create_pizza].call(pizza: pizza_params) do |result|
      result.success do |pizza|
        DomainFun[:create_toppings_from_pizza].call(pizza: pizza)
        render json: pizza
      end
    end
  end

  private

  def pizza_params
    params.require(:pizza).permit(:name, :description, :toppings => [])
  end
end
