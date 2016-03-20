class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def commands
    @commands ||= {
      getPizzas:   Commands::GetPizzas.new(repo: pizza_repository),
      createPizza: Commands::CreatePizza.new(repo: pizza_repository)
    }
  end

  def pizza_repository
    Repositories::AR::Pizza
  end

end
