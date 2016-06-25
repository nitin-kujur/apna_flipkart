class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :orders
  has_many :addresses
  has_many :transactions
  has_many :products
  has_one :cart

  ROLES = %w[admin seller customer].freeze

def roles=(roles)
  self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.inject(0, :+)
end

def roles
  ROLES.reject do |r|
    ((roles_mask.to_i || 0) & 2**ROLES.index(r)).zero?
  end
end

 def self.full_name
 end

 def full_name
   if self.first_name.present? && self.last_name.present?
   		display_text = "#{self.first_name}  #{self.last_name}"
   else
   		display_text = self.email
   end	
   display_text
 end
end
