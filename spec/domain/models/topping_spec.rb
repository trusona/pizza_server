require "spec_helper"

RSpec.describe Models::Topping do
  let(:topping) do
    described_class.new name: "Pepperoni"
  end

  it 'has a name' do
    expect(topping.name).to eq "Pepperoni"
  end

  it 'is a value object' do
    expect(topping).to be == Models::Topping.new(name: "Pepperoni")
  end
end
