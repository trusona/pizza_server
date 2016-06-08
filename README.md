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
  * As a builder, I should be able to list toppings on a pizza

**Once you have a client built.  Deploy it some where and send the url to use it to
[devprojects@trusona.com](mailto:devprojects@trusona.com).**

Resources Server
================
For development and testing, you can run Docker containers for the database and the web services.

To get Docker for your development environment, start here http://docs.docker.com. If you are running _Mac OS X_ or _Windows_, installing the Docker Toolbox is the quickest way to get going.

With Docker ready to go, you can now clone this project.

Within the cloned project folder, simply run:

```
docker-compose up
```

This starts the database and web service containers. Once they are ready, you will need the IP address of the Docker machine. Get that by running:

```
docker-machine ip
```

Resources
=========
Use these resources to build your client.  

```
GET  toppings               # List toppings
POST toppings               # Create a topping
GET  pizzas                 # List pizzas
POST pizzas                 # Create a pizza
GET  pizzas/:id/toppings    # List toppings associated with a pizza
POST pizzas/:id/toppings    # Add a topping to an existing pizza
```

*Example curl command to create a pizza:*
```
curl -H "Content-Type: application/json" -H "Accept: application/json" http://{you docker machines IP}:3000/pizzas --data '{"pizza": {"name": "belleboche", "description": "Pepperoni, Sausage, Mushroom"}}'
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
POST /toppings, {topping: {name: "Pepperoni"}}
```
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
```
GET  /pizzas/:pizza_id/toppings
```
