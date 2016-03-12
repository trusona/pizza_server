require "rails_helper"

describe Validators::CreatePizzaTopping do
  subject { described_class.new }
  let(:topping_ids) { [1,2,3,4] }
  let(:topping_id)  { 1 }

  describe '#run' do
    it 'expects the pizza toppings to not exist' do
      expect(
        subject.run(
          topping_ids: topping_ids,
          topping_id:  topping_id)
        ).to be == { pizza_topping: ["This pizza topping already exists"] }
    end
  end
end
