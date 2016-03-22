# require "rails_helper"
#
# RSpec.describe Commands::CreateToppingsFromPizza do
#   subject { described_class.new }
#
#   describe '#run' do
#     let(:attributes) do
#       { "name"        => "Sicilian",
#         "description" => "Thick Crust",
#         "toppings"    => ["mushrooms", "corn husks"]}
#     end
#
#     let(:pizza) { Commands::CreatePizza.new.run(pizza: attributes)[:result] }
#
#     it 'adds the toppings from the pizza' do
#       subject.run(pizza: pizza)
#     end
#
#   end
# end
