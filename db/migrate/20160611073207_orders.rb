class Orders < ActiveRecord::Migration
  def change
  	create_table :orders do |t|
   	  t.belongs_to :user
			# t.string :line_items
			t.date    :delivery_date
			t.date    :pickup_date
			t.integer :cost
			t.belongs_to :coupon
			t.integer :discount
			t.integer :final_cost
			t.belongs_to :address
			# t.integer :transactions

      t.timestamps null: false
    end
  end
end
