require "rails_helper"

RSpec.describe Commands::CreatePizza do
  subject { described_class.new }
  describe '#call' do
    let(:attributes) do
      { "name"        => "Sicilian",
        "description" => "Thick Crust",
        "toppings"    => ["mushrooms", "corn husks"]}
    end

    let(:pizza) { subject.call(pizza: attributes) }

    it 'creates a pizza with an id' do
      expect(pizza[:result]).to be == attributes.merge("id" => 1)
    end

    describe do
      let(:attributes_with_missing_name) do
        { "description" => "Thick Crust",
          "toppings"    => ["mushrooms", "corn husks"]}
      end

      it 'blows up if a validation breaks' do
        expect(subject.call(pizza: attributes_with_missing_name)[:errors])
          .to be == { :name => ["can't be blank"] }
      end
    end
  end
end
