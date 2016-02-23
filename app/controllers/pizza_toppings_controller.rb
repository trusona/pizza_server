class PizzaToppingsController < ApplicationController
  def index
    Commands::GetPizza.run(name: params[:pizza_id]) do |pizza|
      @pizza = pizza
    end

    render json: @pizza.pizza_toppings
  end

  def create
    Commands::CreatePizzaTopping.run(
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
