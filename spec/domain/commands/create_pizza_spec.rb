require "rails_helper"

RSpec.describe Commands::CreatePizza do
  subject { described_class.new }
  describe '#run' do
    let(:pizza_attributes) do
      {
        "name"        => "Sicilian",
        "description" => "Thick Crust",
        "toppings"    => ["mushrooms", "corn husks"]}
    end

    let(:pizza) { subject.run(pizza: pizza_attributes) }

    it 'creates a pizza with an id' do
      expect(pizza).to be == pizza_attributes.merge("id" => 1)
    end
  end
end
