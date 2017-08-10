class DashboardController < ApplicationController
  def index
    @division_count = Division.where(is_active: 'Y').count
    @district_count = District.where(is_active: 'Y').count
    @complex_count = MComplex.where(is_active: 'Y').count
    @branch_count = Branch.where(is_active: 'Y').count
    @order_count = Order.where(fk_order_status_id: ['-4', '-5']).count
    @q = ransack_params
    @orders = ransack_result
  end
end

private
  def ransack_params
    Order.ransack(params[:q])
  end

  def ransack_result
    @q.result(distinct: true).page(params[:page])
  end
