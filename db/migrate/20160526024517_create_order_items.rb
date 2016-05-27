class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :pizza_id
      t.integer :order_id
      t.decimal :price
      t.integer :quantity
    end
  end
end
