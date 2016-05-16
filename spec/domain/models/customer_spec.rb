require "rails_helper"

RSpec.describe Models::Customer do
  subject { described_class.new({ 'first_name' => 'Chris', 'last_name' => 'Young', 'id' => '1' })}

  it '#first_name' do
    expect(subject.first_name).to be == 'Chris'
  end

  it '#last_name' do
    expect(subject.last_name).to be == "Young"
  end

  it '#id' do
  	expect(subject.id).to be == '1'
  end
end
