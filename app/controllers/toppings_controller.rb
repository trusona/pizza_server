class ToppingsController < ApplicationController
  def index
    commands[:get_toppings].run do |toppings|
      render json: toppings
    end
  end

  def create
    commands[:create_topping].run(topping: topping_params) do |topping|
      render json: topping
    end
  end

  private

  def topping_params
    params.require(:topping).permit!
  end
end
