class DeliveriesController < ApplicationController
  def index
    @deliveries = Delivery.all
  end
  
  def new
    @delivery = Delivery.new
  end
  
  def edit
    @delivery = Delivery.find(params[:id])
  end
  
  def create
    @delivery = Delivery.new(delivery_params)
    if @delivery.save
      redirect_to deliveries_path
    else
      render "new"
    end
  end
  
  def update
    @delivery = Delivery.find(params[:id])
    if @delivery.update_attributes(delivery_params)
      redirect_to deliveries_path
    else
      render "edit"
    end
  end
    
  
  def destroy
    Delivery.find(params[:id]).destroy
    redirect_to deliveries_path
  end
  
private

  def delivery_params
    params.require(:delivery).permit(:name, :category_id, :responsible_id)
  end
end
