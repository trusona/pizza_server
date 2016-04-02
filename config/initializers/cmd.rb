Cmd.config do |config|
  PIZZA_COMMANDS   = [:create_pizza, :get_pizza, :get_pizzas]
  TOPPING_COMMANDS = [:create_topping, :get_toppings, :create_toppings_from_pizza]

  config.load_commands *PIZZA_COMMANDS,   repository: Repositories::AR::Pizza
  config.load_commands *TOPPING_COMMANDS, repository: Repositories::AR::Topping
end