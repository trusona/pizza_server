class AddDescriptionToPizza < ActiveRecord::Migration
  def change
    add_column :pizzas, :description, :string
  end
end
