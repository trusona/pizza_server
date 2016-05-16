require "rails_helper"

RSpec.describe Commands::CreateCustomer do
  subject     { described_class.new }
  let(:command)  { Commands::CreateCustomer.new }
  
  describe '#call' do
  	it 'creates a customer' do
  	  customer = command.call(customer: {'first_name' => "Chris", 'last_name' => "Young"})
  	  expect(customer.first_name).to be == "Chris"
  	end
  end
end
