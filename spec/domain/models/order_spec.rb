require "rails_helper"

RSpec.describe Models::Order do
  subject { described_class.new({ 'pizzas' => [pizza] })}
  
  let(:pizza) do
    Models::Pizza.new(
      "name" => "Sicillian",
      "description" => "A Roundish Pizza with sauce",
      "toppings"    => ["roots", "pig pieces"]
    )
  end

  it 'has a pizza' do
    expect(subject.pizzas).to eq [pizza]
  end
end
