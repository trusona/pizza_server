require "rails_helper"

RSpec.describe Models::Order do
  subject { described_class.new({ 'pizzas' => [pizza] })}
  
  let(:pizza) do
    Models::Pizza.new(
      "name"        => "Sicillian",
      "description" => "A Roundish Pizza with sauce",
      "toppings"    => ["roots", "pig pieces"]
    )
  end

  it 'has order items' do
    subject.add_item(pizza: pizza, quantity: 1)
    expect(subject.items.first.pizza).to eq pizza
  end
end


