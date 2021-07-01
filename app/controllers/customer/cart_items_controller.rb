class Customer::CartItemsController < ApplicationController
  def index
    @cart_items = CartItems.where(customer_id: current_customer.id)
    @total_price = 0
    @cart_items.each do |cart_item|
      @total_price += (cart_item.product.price * 1.1) * cart_item.amount
    end
  end
end
