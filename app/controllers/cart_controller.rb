class CartController < ApplicationController
  def update
  	cart = current_user.cart.blank? ? current_user.build_cart : current_user.cart
  	prod = Product.find(params['product_id'])
  	cart.products.push(prod) unless cart.products.include?(prod)
  	cart.save
  	

  	render json: {status: 'success', itemCount: cart.products.count }
  end
end
