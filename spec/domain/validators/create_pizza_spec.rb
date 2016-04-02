require "rails_helper"

RSpec.describe Validators::CreatePizza do
  it do
    expect(Validators::CreatePizza.new.call({ 'name' => 'Deep Dish' })).to be_empty
    expect(Validators::CreatePizza.new.call({})).to be == { name: ["can't be blank"]}
  end
end
