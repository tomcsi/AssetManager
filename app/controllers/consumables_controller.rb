class ConsumablesController < ApplicationController
  def index
    @consumables = Consumable.all
  end
  
  def new
    @consumable = Consumable.new
  end
  
  def edit
    @consumable = Consumable.find(params[:id])
  end
  
  def create
    @consumable = Consumable.new(consumable_params)
    if @consumable.save
      redirect_to consumables_path
    else
      render "new"
    end
  end
  
  def update
    @consumable = Consumable.find(params[:id])
    if @consumable.update_attributes(consumable_params)
      redirect_to consumables_path
    else
      render "edit"
    end
  end
    
  
  def destroy
    Consumable.find(params[:id]).destroy
    redirect_to consumables_path
  end
  
private

  def consumable_params
    params.require(:consumable).permit(:name, :category_id, :qty, :responsible_id)
  end
end
