class PizzaToppingsController < ApplicationController
  def index
    Commands::GetPizzaToppings.new.run(id: params[:pizza_id]) do |pizza_toppings|
      render json: pizza_toppings.map(&:to_json)
    end
  end

  def create
    Commands::CreatePizzaTopping.new.run(
      pizza_id:      pizza_params[:pizza_id],
      topping_id:    pizza_params[:topping_id]
    ) do |topping|
      render json: topping.to_json
    end
  end

  private

  def pizza_params
    params.permit(:pizza_id, :topping_id)
  end

end
