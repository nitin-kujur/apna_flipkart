class HomeController < ApplicationController
  def index
  	@prod_list = Product.all
  end
end
