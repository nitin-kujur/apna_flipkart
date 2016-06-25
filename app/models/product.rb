class Product < ActiveRecord::Base
	belongs_to :user
	belongs_to :category
	has_many :line_items
	has_and_belongs_to_many :carts
end
