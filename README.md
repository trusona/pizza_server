# Pizza Builder Client

We want to build a pizza from a list of ingredients.  The Pizza will have a name,
a description, and toppings.

Requirements
============

Please build a client that will meet the following acceptance criteria:

  * As a pizza client user, I should be able to list existing pizzas.
  * As a pizza client user, I should be able to create a new pizza.
  * As a pizza client user, I should be able to create toppings that can be added to a pizza.
  * As a pizza client user, I should be able to list the toppings I can to add to a pizza.
  * As a pizza client user, I should be able to add a topping to a pizza.
  * As a pizza client user, I should be able to list toppings on a pizza.
  
Additionally:

  * All coding *must* be done using TDD following [The Three Rules of TDD](http://butunclebob.com/ArticleS.UncleBob.TheThreeRulesOfTdd).
  * Code can be written using the language and environment you feel will best represent yourself to the reviewers.

**Once you have a client built, deploy the source somewhere online (e.g. Github) and send us the URL at
[devprojects@trusona.com](mailto:devprojects@trusona.com).**

Resources Server
================
For development and testing, you can run Docker containers for the database and the web services.

To get Docker for your development environment, start here [https://www.docker.com/community-edition](https://www.docker.com/community-edition). If you are installing docker in an environment other than [Mac](https://docs.docker.com/docker-for-mac/install/) or [Windows](https://docs.docker.com/docker-for-windows/install/), be sure you also install [Docker Compose](https://docs.docker.com/compose/install/).

With Docker ready to go, you can now clone this project.

Launch a terminal session and run the following within the cloned projects root:

```bash
docker-compose up
```

This starts the database and web service containers. Once they are ready, you will need the IP address of the Docker machine. Get that by running:

```bash
docker-compose ps
```

Look for the pizzaserver_web line:

```bash
pizzaserver_web_1   /bin/sh -c ./bootstrap.sh   Up      0.0.0.0:3000->3000/tcp
```

In the example above and the examples below the ip address is `0.0.0.0`. Be sure to replace them with the ip address your docker container is actually using.

Resources
=========
Use these resources to build your client.  

```bash
GET  toppings               # List toppings
POST toppings               # Create a topping
GET  pizzas                 # List pizzas
POST pizzas                 # Create a pizza
GET  pizzas/:id/toppings    # List toppings associated with a pizza
POST pizzas/:id/toppings    # Add a topping to an existing pizza
```

*Example curl command to get the toppings:*
```bash
curl http://0.0.0.0:3000/toppings 
```

*Example curl command to create a pizza:*
```bash
curl -H "Content-Type: application/json" -H "Accept: application/json" http://0.0.0.0:3000/pizzas --data '{"pizza": {"name": "belleboche", "description": "Pepperoni, Sausage, Mushroom"}}'
```

Pizza
-----
A Pizza is a baked, round piece of dough covered with sauce and toppings

#### Examples:
```bash
POST /pizzas, {"pizza" => {"name" => "Belleboche", "description" => "Pepperoni, Mushroom and Sausage"}}
```
```bash
GET  /pizzas
```

Topping
-------
Raw ingredients that can be added to a pizza

#### Examples:
```bash
POST /toppings, {topping: {name: "Pepperoni"}}
```
```bash
GET  /toppings
```

Pizza Toppings
--------------
Pizza Toppings are Toppings that have been added to a Pizza

#### Examples:

```bash
POST /pizzas/:pizza_id/toppings, {topping_id: 1}
```
```bash
GET  /pizzas/:pizza_id/toppings
```
