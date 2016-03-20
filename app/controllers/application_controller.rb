class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  private

  def commands
    @commands ||= {
      get_pizzas:      Commands::GetPizzas.new(repo: Repositories::AR::Pizza),
      create_pizza:    Commands::CreatePizza.new(repo: Repositories::AR::Pizza),
      get_toppings:    Commands::GetToppings.new(repo: Repositories::AR::Topping),
      create_topping: Commands::CreateTopping.new(repo: Repositories::AR::Topping),
    }
  end

end
