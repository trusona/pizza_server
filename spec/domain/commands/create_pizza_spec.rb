require "rails_helper"

RSpec.describe Commands::CreatePizza do
  subject     { described_class.new }
  let(:pizza) { subject.call(pizza: attributes) }
  let(:attributes) do
    { 
      "name"        => "Sicilian",
      "description" => "Thick Crust",
      "price"       => 5,
      "toppings"    => ["mushrooms", "corn husks"]
    }
  end
  let(:attributes_with_missing_name) do
    { 
      "description" => "Thick Crust",
      "toppings"    => ["mushrooms", "corn husks"]
    }
  end

  describe '#call' do
    it 'creates a pizza with an id' do
      expect(pizza).to eq Models::Pizza.new(attributes.merge("id" => 1))
    end

    describe 'Errors' do
      it 'blows up if a validation breaks' do
        expect { subject.call(pizza: attributes_with_missing_name) }
          .to raise_error(Validators::ValidationError) do |error|
          expect(error.errors).to include :name => ["can't be blank"]
        end
      end
    end
  end
end
