require "rails_helper"

RSpec.describe Commands::CreateOrder do
  subject     { described_class.new }
  
  describe '#call' do
    it 'creates an order' do
      subject.call(order: {})
    end
  end
end
