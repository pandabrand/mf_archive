class UsersController < ApplicationController
  def index
    # @orders = Order.all
    @users = User.paginate(:page => params[:page])
  end

  def show
    @user = User.find(params[:id])
  end
end
