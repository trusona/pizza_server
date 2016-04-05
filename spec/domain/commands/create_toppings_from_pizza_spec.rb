require "rails_helper"

RSpec.describe Commands::CreateToppingsFromPizza do
  subject { described_class.new }

  describe '#call' do
    let(:attributes) do
      { "name"        => "Sicilian",
        "description" => "Thick Crust",
        "toppings"    => ["mushrooms", "corn husks"]}
    end

    let(:pizza) { Commands::CreatePizza.new.call(pizza: attributes) }

    it 'adds the toppings from the pizza' do
      expect(subject.call(pizza: pizza)).to eq ["mushrooms", "corn husks"]
    end
  end
end
