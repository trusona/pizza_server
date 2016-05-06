require "spec_helper"

RSpec.describe Commands::GetOrder do
  subject { described_class.new }
  let(:pizza) { Commands::CreatePizza.new.call(
  	pizza: { 
      "name"        => "Sicilian",
      "description" => "Thick Crust",
      "toppings"    => ["mushrooms", "corn husks"]
  })}
  
  let(:order_attributes) {
  	{ 'pizzas' => [pizza] }
  }

  let(:order) { Commands::CreateOrder.new.call(order: order_attributes) }

  describe '#call' do
  	it 'gets an order' do
  	  expect(subject.call(order.id)).to eq order
  	end
  end
end
