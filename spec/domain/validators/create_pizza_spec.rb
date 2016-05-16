require "rails_helper"

RSpec.describe Validators::CreatePizza do
  it do
    expect(Validators::CreatePizza.new.call({ 'name' => 'Deep Dish', 'price' => 5.0 })).to be_empty
    expect(Validators::CreatePizza.new.call({})).to eq name: ["can't be blank"], price: ["can't be blank"]
  end
end
