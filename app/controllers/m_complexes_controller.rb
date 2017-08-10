class MComplexesController < ApplicationController
  def index
    @complexes = MComplex.paginate(:page => params[:page])
  end

  def show
    @complex = MComplex.find(params[:id])
  end
end
