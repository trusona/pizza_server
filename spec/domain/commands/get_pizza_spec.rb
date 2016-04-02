require "rails_helper"

RSpec.describe Commands::GetPizza do
  subject { described_class.new }
  describe '#call' do
    let(:attributes) do
      { "name"        => "Sicilian",
        "description" => "Thick Crust",
        "toppings"    => ["mushrooms", "corn husks"]}
    end

    it 'creates a pizza with an id' do
      pizza = Commands::CreatePizza.new.call(pizza: attributes)
      expect(Commands::GetPizza.new.call(id: pizza["id"]))
        .to be == attributes.merge("id" => 1)
    end
  end
end
