class CreatePizzaToppings < ActiveRecord::Migration
  def change
    create_table :pizza_toppings do |t|
      t.integer :pizza_id, :topping_id
    end
  end
end
