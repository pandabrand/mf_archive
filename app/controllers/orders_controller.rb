class OrdersController < ApplicationController
  def index
    @division_count = Division.where(is_active: 'Y').count
    @district_count = District.where(is_active: 'Y').count
    @complex_count = MComplex.where(is_active: 'Y').count
    @branch_count = Branch.where(is_active: 'Y').count
    @order_count = Order.where(order_status: ['-4', '-5']).count
    # @order_status = OrderStatus.where()
    @q = ransack_params
    @orders = ransack_result
  end

  def show
    @order = Order.find(params[:id])
  end
end

private
  def ransack_params
    Order.ransack(params[:q])
  end

  def ransack_result
    @q.result().includes(:creator, :form_field_values).page(params[:page])
  end
