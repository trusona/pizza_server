require "rails_helper"

RSpec.describe "Modeling" do
	it 'playground' do
		get_pizzas = Commands::GetPizzas.new

		expect(get_pizzas.call).to be == []

		create_pizza = Commands::CreatePizza.new
		
		pizza = create_pizza.call(pizza: { 'price' => 5, 'name' => 'white', 'toppings' => ['garlic', 'cheese'] })

		expect(pizza.name).to eq 'white'

		expect(get_pizzas.call).to eq [pizza]

		create_customer = Commands::CreateCustomer.new

		customer = create_customer.call(customer: {'first_name' => "Chris", 'last_name' => "Young"})

		create_order = Commands::CreateOrder.new

		order = create_order.call(order: { 'pizza' => pizza, 'customer' => customer })

		expect(order.customer).to eq customer
	end
end
