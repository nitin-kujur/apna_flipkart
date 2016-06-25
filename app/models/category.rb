class Category < ActiveRecord::Base
	has_many :sub_categories, class_name: "Category",
                          foreign_key: "category_id"
 
    belongs_to :category, class_name: "Category"
    has_many :products
end
