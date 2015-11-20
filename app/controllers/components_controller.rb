class ComponentsController < ApplicationController
  def index
    @components = Component.all
  end
  
  def new
    @component = Component.new
  end
  
  def edit
    @component = Component.find(params[:id])
  end
  
  def create
    @component = Component.new(component_params)
    if @component.save
      redirect_to components_path
    else
      render "new"
    end
  end
  
  def update
    @component = Component.find(params[:id])
    if @component.update_attributes(component_params)
      redirect_to components_path
    else
      render "edit"
    end
  end
    
  
  def destroy
    Component.find(params[:id]).destroy
    redirect_to components_path
  end
  
private

  def component_params
    params.require(:component).permit(:name, :category_id, :responsible_id)
  end
end
