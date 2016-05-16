require "rails_helper"

RSpec.describe "Modeling" do

	let(:get_pizzas)      { Commands::GetPizzas.new(repo: pizza_repo) }
	let(:create_pizza)    { Commands::CreatePizza.new(repo: pizza_repo) }
	let(:create_customer) { Commands::CreateCustomer.new(repo: customer_repo) }
	let(:create_order)    { Commands::CreateOrder.new(repo: order_repo) }

	describe 'in memory' do
		let(:pizza_repo)      { Repositories::Pizza }
		let(:customer_repo)   { Repositories::Customer }
		let(:order_repo)      { Repositories::Order }

		it { playground }  
	end

	describe 'active record' do
		let(:pizza_repo)      { Repositories::AR::Pizza }
		let(:customer_repo)   { Repositories::AR::Customer }
		let(:order_repo)      { Repositories::AR::Order }

		it { playground }  
	end


	def playground
		expect(get_pizzas.call).to be == []		
		pizza = create_pizza.call(pizza: { 'price' => 5, 'name' => 'white', 'toppings' => ['garlic', 'cheese'] })
		expect(pizza.name).to eq 'white'
		expect(get_pizzas.call).to eq [pizza]
		customer = create_customer.call(customer: {'first_name' => 'Chris', 'last_name' => 'Young'})
		order = create_order.call(order: { 'pizzas' => [pizza], 'customer' =>  customer})
		expect(order.id).to_not be_nil
		expect(order.customer).to eq customer
	end
end
