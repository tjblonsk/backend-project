class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    @order.order_items.build
    @pizza_types = PizzaType.all
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to orders_path, notice: 'Success!'
    else
      render 'new'
    end

  end


  private
    def order_params
      params.require(:order).permit(order_items_attributes: [:order_id, :pizza_type_id, :quantity])
    end
end
