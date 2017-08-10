class ArfController < ApplicationController
  def index
    @order = Order.find(params[:id])
    render action: :index, pdf: "#{:id}_arf", layout: false
  end
end
