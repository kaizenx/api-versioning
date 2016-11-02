module Api
module V1
class OrdersController < BaseController
  
  def index
    @orders = Order.take(10)
    render json: @orders, status: 200
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      render json: @order, status: :created
    else
      render json: @order.errors, status: :unprocessable_entity
    end
  end


  private
    
    def order_params
      params.permit(:name, :description)
    end
end
end
end
