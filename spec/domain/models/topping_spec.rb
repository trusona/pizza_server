require "rails_helper"

RSpec.describe Models::Topping do
  let(:topping) do
    described_class.new name: "Pepperoni"
  end

  it 'has a name' do
    expect(topping.name).to eq "Pepperoni"
  end
end
