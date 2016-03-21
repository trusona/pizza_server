require "rails_helper"

RSpec.describe Commands::GetPizza do
  subject { described_class.new }
  describe '#run' do
    let(:attributes) do
      { "name"        => "Sicilian",
        "description" => "Thick Crust",
        "toppings"    => ["mushrooms", "corn husks"]}
    end

    it 'creates a pizza with an id' do
      pizza = Commands::CreatePizza.new.run(pizza: attributes)[:result]
      expect(Commands::GetPizza.new.run(id: pizza["id"]))
        .to be == attributes.merge("id" => 1)
    end
  end
end
