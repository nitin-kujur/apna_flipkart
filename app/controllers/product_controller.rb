class ProductController < ApplicationController
  def index
  	@prod_list = Product.all
  end
end
