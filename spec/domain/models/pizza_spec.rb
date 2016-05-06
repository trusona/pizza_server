require "spec_helper"

RSpec.describe Models::Pizza do
  let(:pizza) do
    described_class.new(
      "id" => "yaya",
      "name" => "Sicillian",
      "description" => "A Roundish Pizza with sauce",
      "toppings" => ["roots", "pig pieces"]
    )
  end

  it 'has an id' do
    expect(pizza.id).to eq "yaya"
  end

  it "has a name" do
    expect(pizza.name).to eq "Sicillian"
  end

  it "has a description" do
    expect(pizza.description).to eq "A Roundish Pizza with sauce"
  end

  it 'has toppings' do
    expect(pizza.toppings).to eq ["roots", "pig pieces"]
  end
end
