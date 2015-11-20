class ComponentItemsController < ApplicationController
  def index
    @component = Component.find(params[:component_id])
    @component_items = @component.items
  end
  
  def new
    @component = Component.find(params[:component_id])
    @component_item = @component.items.new
  end
  
  def update
    @component = Component.find(params[:component_id])
    @component_item = @component.items.find(params[:id])
    if @component_item.update_attributes(component_item_params)
      redirect_to component_component_items_path
    else
      render "edit"
    end
  end
  
  def edit
    @component = Component.find(params[:component_id])
    @component_item = @component.items.find(params[:id])
  end
  
  def create
    @component = Component.find(params[:component_id])
    @component_item = @component.items.new(component_item_params)
    if @component_item.save
      redirect_to component_component_items_path(@component)
    else
      render "new"
    end
  end
  
  def destroy
    Component.find(params[:component_id]).items.find(params[:id]).destroy
    redirect_to component_component_items_path
  end
  
private
  
  def component_item_params
    params.require(:component_item).permit(:asset_item_id, :component_id, :incomingdate, :installdate, :installposition, :installer_id, :identification)    
  end
end
