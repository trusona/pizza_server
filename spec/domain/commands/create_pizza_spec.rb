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

    let(:persisted_pizza_attributes) do
      {
        "id"         => 1,
        "name"       => "Sicilian",
        "description"=> "Thick Crust",
        "toppings"   => ["mushrooms", "corn husks"]}
    end

    let(:pizza) { subject.run(pizza: pizza_attributes) }

    it 'creates a pizza' do
      expect(pizza).to be == persisted_pizza_attributes
    end
  end
end
