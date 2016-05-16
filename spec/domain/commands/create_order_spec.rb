require "rails_helper"

RSpec.describe Commands::CreateOrder do
  subject     { described_class.new }
  let(:pizza) { Commands::CreatePizza.new.call(pizza: { 
      "name"        => "Sicilian",
      "description" => "Thick Crust",
      "price"       => 5.0,
      "toppings"    => ["mushrooms", "corn husks"] })}

  describe '#call' do
    it 'creates an order' do
      subject.call(order: { 'pizzas' => [pizza] })
    end
  end
end
