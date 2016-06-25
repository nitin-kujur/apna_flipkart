class Coupons < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.string :code
      t.string :discount_type
      t.integer :amount
      t.date :expiry_date
      t.integer :max_limit
      t.text :description
      t.integer :max_use
      t.integer :count 

      t.timestamps null: false
    end
  end
end
