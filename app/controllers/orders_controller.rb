class OrdersController < ApplicationController
  protect_from_forgery with: :exception

  def index
    @order = Order.all
    
  end
end
