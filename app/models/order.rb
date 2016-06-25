class Order < ActiveRecord::Base
	belongs_to :address
	belongs_to :user
	belongs_to :coupon
	has_one :transaction
	has_many :line_items
end
