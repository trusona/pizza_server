class ToppingsController < ApplicationController
  def index
    Commands::GetToppings.run do |toppings|
      render json: toppings
    end
  end

  def create
    Commands::CreateTopping.run(topping: topping_params) do |topping|
      render json: topping
    end
  end

  private

  def topping_params
    params.require(:topping).permit!
  end
end
