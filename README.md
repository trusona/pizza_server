Pizza Builder Client

We want to be able to build a pizza from a list of ingredients.  The Pizza will
have a name, a description, and toppings.

Please build a client that will cover these stories:
  As a builder, I should be able to list existing Pizzas
  As a builder, I should be able to create a new Pizza
  As a builder, I should be able to create toppings that can be added to a Pizza
  As a builder, I should be able to list the toppings I can to add to a Pizza
  As a builder, I should be able to add a topping to a pizza
  As a builder, I should be able to see the cost of a pizza change as I add ingredients

Resources
  Pizzas
    A Pizza is a baked, round piece of dough covered with sauce and toppings

    Endpoints:
      GET /pizzas
        List existing Pizzas

      POST /pizzas
        Create a new pizza

      Examples:
        POST /pizzas, {pizza: {"pizza" => {"name" => "Belleboche", "description"}}}
        GET  /pizzas

  Toppings
    Raw ingredients that can be added to a pizza

    Endpoints:
      GET /toppings
        List existing toppings.

      POST /toppings
        Create a new topping.

      Examples:
        POST /toppings, {topping: {name: "Pepperoni"}}
        GET  /toppings

  Pizza Toppings
    Pizza Toppings are Toppings that have been added to a Pizza

    Endpoints
      POST /pizzas/:pizza_id/toppings
        Add a topping to a Pizza

      GET /pizzas/:pizza_id/toppings
        List toppings for a pizza



