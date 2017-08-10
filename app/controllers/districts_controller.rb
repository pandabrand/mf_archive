class DistrictsController < ApplicationController
  def index
    @districts = District.where(is_active: 'Y').paginate(:page => params[:page])
  end

  def show
    @district = District.find(params[:id])
  end
end
