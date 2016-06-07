cheese = Repositories::Topping.create(name: 'Cheese')
pepperoni = Repositories::Topping.create(name: 'Pepperoni')
sausage = Repositories::Topping.create(name: 'Sausage')

cheese_pie = Repositories::Pizza.create(name: 'Cheese', description: 'A simple yet tasty pie.')
Repositories::PizzaTopping.create(pizza_id: cheese_pie.id, topping_id: cheese.id)

pep_pie = Repositories::Pizza.create(name: 'Pepperoni', description: 'The king of all pizzas.')
Repositories::PizzaTopping.create(pizza_id: pep_pie.id, topping_id: cheese.id)
Repositories::PizzaTopping.create(pizza_id: pep_pie.id, topping_id: pepperoni.id)

sausage_pie = Repositories::Pizza.create(name: 'Sausage', description: 'Just trying to be as good as Pep.')
Repositories::PizzaTopping.create(pizza_id: sausage_pie.id, topping_id: cheese.id)
Repositories::PizzaTopping.create(pizza_id: sausage_pie.id, topping_id: sausage.id)
