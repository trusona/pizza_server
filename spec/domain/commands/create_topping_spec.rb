require "rails_helper"

RSpec.describe Commands::CreateTopping do
  let(:topping) { described_class.new.call(topping: { name: "Pepperoni" }) }

  it do
    expect(topping.name).to be == "Pepperoni"
  end
end
