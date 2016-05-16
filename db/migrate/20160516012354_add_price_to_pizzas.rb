class AddPriceToPizzas < ActiveRecord::Migration
  def change
    add_column :pizzas, :price, :decimal
  end
end
