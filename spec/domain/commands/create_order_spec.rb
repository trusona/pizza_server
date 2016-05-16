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
      subject.call(order: { 'pizzas' => [pizza], 'customer' => customer })
    end
  end
end
