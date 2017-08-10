class DivisionsController < ApplicationController
  def index
    @divisions = Division.where(is_active: 'Y').paginate(:page => params[:page])
  end

  def show
    @division = Division.find(params[:id])
  end
end
