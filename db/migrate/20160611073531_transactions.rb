class Transactions < ActiveRecord::Migration
  def change
  	create_table :transactions do |t|
       t.belongs_to :order
			 t.belongs_to :user
			 t.string :status
			 t.string :type
			 t.string :mode

      t.timestamps null: false
     end
  end
end
