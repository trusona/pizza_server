require "rails_helper"

RSpec.describe Commands::CreateOrder do
  subject     { described_class.new }
  let(:pizza) { Commands::CreatePizza.new.call(pizza: { 
      "name"        => "Sicilian",
      "description" => "Thick Crust",
      "price"       => 5.0,
      "toppings"    => ["mushrooms", "corn husks"] })}

  let(:customer) do
    Commands::CreateCustomer.new.call(customer: { 'first_name' => 'Chris', 'last_name' => 'Young' })
  end

  describe '#call' do
    it 'creates an order' do
      subject.call(order: { 'items' => [{'pizza' => pizza, 'quantity' => 5, 'price' => 4.0}], 'customer' => customer })
    end

    it 'copies the price from the pizza' do
      order = subject.call(order: { 'items' => [{'pizza' => pizza, 'quantity' => 5, 'price' => 4.0}], 'customer' => customer })
      Commands::ChangePrice.new.call(pizza: pizza, new_price: 12.0)
      expect(Commands::GetOrder.new.call(order.id).price).to be == 4.0
    end
  end
end
