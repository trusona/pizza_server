class AddToppingsToPizzas < ActiveRecord::Migration
  def change
    add_column :pizzas, :toppings, :json
  end
end
