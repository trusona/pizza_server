require "rails_helper"

RSpec.describe Commands::ChangePrice do
  subject { described_class.new }

  let(:pizza) { Commands::CreatePizza.new.call(
  	pizza: { 
  		'name'     => 'white', 
  		'toppings' => ['pepperoni'], 
  		'price'    => 5.00 }) }

  let(:get_pizza) { Commands::GetPizza.new }
  
  describe '#call' do
  	it 'changes the price of the pizza' do
      subject.call(pizza: pizza, new_price: 15.00)
      expect(get_pizza.call(id: pizza.id).price).to be == 15
  	end
  end

end


# TODO: ValidationError isn't showing errors