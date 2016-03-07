class ToppingsController < ApplicationController
  def index
    Commands::GetToppings.new.run do |toppings|
      render json: toppings
    end
  end

  def create
    Commands::CreateTopping.new.run(topping: topping_params) do |topping|
      render json: topping
    end
  end

  private

  def topping_params
    params.require(:topping).permit!
  end
end
