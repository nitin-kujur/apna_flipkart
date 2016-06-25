class LineItems < ActiveRecord::Migration
  def change
  	create_table :line_items do |t|
      t.belongs_to :order
      t.belongs_to :product
    end
  end
end
