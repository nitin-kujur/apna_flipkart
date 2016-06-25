class Categories < ActiveRecord::Migration
  def change
  	create_table :categories do |t|
       
      t.string  :title
      t.text    :description
      t.text    :tag
      t.references :category, index: true
      
      t.timestamps null: false
     end
  end
end
