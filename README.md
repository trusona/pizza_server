# Pizza Builder Client

We want to build a pizza from a list of ingredients.  The Pizza will have a name,
a description, and toppings.

Requirements
============

Please build a client that will cover these stories, you can use any technology
you feel comfortable with.
  * As a builder, I should be able to list existing Pizzas
  * As a builder, I should be able to create a new Pizza
  * As a builder, I should be able to create toppings that can be added to a Pizza
  * As a builder, I should be able to list the toppings I can to add to a Pizza
  * As a builder, I should be able to add a topping to a pizza

Resources
=========
Use these resources to build your client.  The server with these resources can
be accessed at *https://pizzaserver.herokuapp.com/pizzas*

Pizza
-----
A Pizza is a baked, round piece of dough covered with sauce and toppings

#### Pizza Endpoints:

*List existing Pizzas*
```
GET /pizzas
```

*Create a new pizza*
```
POST /pizzas
```

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

#### Topping Endpoints:
*List existing toppings*
```
GET /toppings
```

*Create a new topping*
```
POST /toppings
```

#### Examples:
```
POST /toppings, {topping: {name: "Pepperoni"}}
```
```
GET  /toppings
```

Pizza Toppings
--------------
Pizza Toppings are Toppings that have been added to a Pizza

#### Pizza Topping Endpoints:
*Add a topping to a Pizza*
```
POST /pizzas/:pizza_id/toppings
```

*List toppings for a pizza*
```
GET /pizzas/:pizza_id/toppings
```

#### Examples:
```
POST /toppings, {topping: {name: "Pepperoni"}}
```
```
GET  /toppings
```



