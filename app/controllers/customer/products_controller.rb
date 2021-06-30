class Customer::ProductsController < ApplicationController
  def index
    @products = Product.page(params[:page]).per(8)
    @product_count = Product.count
  end

  def show
    @product = Product.find(params[:id])
    @cart_items = CartItem.new
  end
end
