class Customer::CustomersController < ApplicationController
  def show
    @customer = current_customer
  end

  def edit
    @customer = current_customer
  end

  def confirm
    @customer = current_customer
  end
end
