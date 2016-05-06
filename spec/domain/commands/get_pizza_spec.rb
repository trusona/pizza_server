require "spec_helper"

RSpec.describe Commands::GetPizza do
  subject { described_class.new }
  describe '#call' do
    let(:attributes) do
      { "name"        => "Sicilian",
        "description" => "Thick Crust",
        "toppings"    => ["mushrooms", "corn husks"]}
    end

    let (:pizza) { Commands::CreatePizza.new.call(pizza: attributes) }

    it 'get a pizza with an id' do
      expect(Commands::GetPizza.new.call(id: pizza.id)).to be == pizza
    end
  end
end
