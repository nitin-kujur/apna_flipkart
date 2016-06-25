class CartsProducts < ActiveRecord::Migration
  def change
  	create_table :carts_products, id: false do |t|
      t.integer :cart_id
      t.integer :product_id
    end
 
    add_index :carts_products, :cart_id
    add_index :carts_products, :product_id
  end
end
