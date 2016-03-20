# Pizza Builder Client

We want to build a pizza from a list of ingredients.  The Pizza will have a name,
a description, and toppings.


Requirements
============

Please build a client that will cover these stories, you can use any stack
you feel comfortable with.

  * As a builder, I should be able to list existing Pizzas
  * As a builder, I should be able to create a new Pizza
  * As a builder, I should be able to list the toppings I can to add to a Pizza
  * As a builder, I should be able to add a topping to a pizza

**Once you have a client built.  Deploy it some where and send the url to use it to
[dev@tanga.com](dev@tanga.com).**

Resources
=========
Use these resources to build your client.  The server with these resources can
be accessed at *https://pizzaserver.herokuapp.com/*

```
GET  toppings               # List toppings
GET  pizzas                 # List pizzas
POST pizzas                 # Create a pizza
POST pizzas/:id/toppings    # Add a topping to an existing pizza
```

*Example curl command to create a pizza:*
```
curl -H "Content-Type: application/json" -H "Accept: application/json" https://pizzaserver.herokuapp.com/pizzas --data '{"pizza": {"name": "belleboche", "description": "Pepperoni, Sausage, Mushroom"}}'
```

Pizza
-----
A Pizza is a baked, round piece of dough covered with sauce and toppings

#### Examples:
```
POST /pizzas, {"pizza" => {"name" => "Belleboche", "description" => "Pepperoni, Mushroom and Sausage"}}
```
```
GET  /pizzas
```

Topping
-------
Raw ingredients that can be added to a pizza

#### Examples:
```
GET  /toppings
```

Pizza Toppings
--------------
Pizza Toppings are Toppings that have been added to a Pizza

#### Examples:
```
POST /pizzas/:pizza_id/toppings, {topping_id: 1}
```
