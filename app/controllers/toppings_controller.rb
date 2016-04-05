class ToppingsController < ApplicationController
  def index
    Cmd[:get_toppings].call do |result|
      result.success do |toppings|
        render json: toppings
      end
    end
  end

  def create

    Cmd[:create_topping].call(topping: topping_params) do |result|
      result.success do |topping|
        render json: topping
      end
    end
  end

  private

  def topping_params
    params.require(:topping).permit(:name)
  end
end
