class Addresses < ActiveRecord::Migration
  def change
  	 create_table :addresses do |t|
        t.string :type
		t.integer :postal_code
		t.string :address_line_1
		t.string :address_line_2
		t.string :city
		t.string :state
		t.string :country
		t.boolean :active
		t.belongs_to :user

      t.timestamps null: false
    end
  end
end
