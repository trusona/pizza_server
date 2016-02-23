Rails.application.routes.draw do
  resources :toppings

  resources :pizzas do
    resources :toppings, controller: :pizza_toppings
  end
end
