class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :pid,            null: false
      t.string  :pname
      t.text    :description
      t.text    :pimg_url
      t.integer :cost
      t.integer  :discount
      t.string  :discount_type, null: false, default: ""
      t.belongs_to :user
      t.belongs_to :category
      t.integer :quantity
      t.timestamps null: false
    end
  end
end
