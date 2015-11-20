class SuppliersController < ApplicationController
  def index
    @suppliers = Supplier.all
  end
  
  def new
    @supplier = Supplier.new
  end
  
  def edit
    @supplier = Supplier.find(params[:id])
  end
  
  def create
    @supplier = Supplier.new(supplier_params)
    if @supplier.save
      redirect_to suppliers_path
    else
      render "new"
    end
  end
  
  def update
    @supplier = Supplier.find(params[:id])
    if @supplier.update_attributes(supplier_params)
      redirect_to suppliers_path
    else
      render "edit"
    end
  end
    
  
  def destroy
    Supplier.find(params[:id]).destroy
    redirect_to suppliers_path
  end
  
private

  def supplier_params
    params.require(:supplier).permit(:name, :address, :phone, :contactname, :contactphone)
  end
end
