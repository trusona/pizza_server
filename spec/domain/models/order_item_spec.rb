require 'rails_helper'

describe Models::OrderItem do
	let(:pizza) do
	  Models::Pizza.new(
	  	"name" 		  => "Sicillian",
	    "description" => "A Roundish Pizza with sauce",
	    "toppings"    => ["roots", "pig pieces"],
	    "price"       => 5.00 )
	end
	let(:order)      { Models::Order.new }
	let(:order_item) { order.add_item(pizza: pizza, quantity: 3, price: 5.00) }

	it 'has a pizza' do
	  expect(order_item.pizza).to eq pizza
	end

	it 'has a quantity' do
	  expect(order_item.quantity).to eq 3
	end

	it 'copies a price from a pizza' do
	  expect(order_item.price).to eq 5.00
	end

	it 'has a total_price (price X quantity)' do
	  expect(order_item.total_price).to eq 15.00
	end
end