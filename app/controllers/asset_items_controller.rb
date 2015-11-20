class AssetItemsController < ApplicationController
  def index
    @asset = Asset.find(params[:asset_id])
    @asset_items = @asset.items
  end
  
  def new
    @asset = Asset.find(params[:asset_id])
    @asset_item = @asset.items.new
  end
  
  def update
    @asset = Asset.find(params[:asset_id])
    @asset_item = @asset.items.find(params[:id])
    if @asset_item.update_attributes(asset_item_params)
      redirect_to asset_asset_items_path
    else
      render "edit"
    end
  end
  
  def edit
    @asset = Asset.find(params[:asset_id])
    @asset_item = @asset.items.find(params[:id])
  end
  
  def create
    @asset = Asset.find(params[:asset_id])
    @asset_item = @asset.items.new(asset_item_params)
    if @asset_item.save
      redirect_to asset_asset_items_path(@asset)
    else
      render "new"
    end
  end
  
  def destroy
    Asset.find(params[:asset_id]).items.find(params[:id]).destroy
    redirect_to asset_asset_items_path
  end
  
private
  
  def asset_item_params
    params.require(:asset_item).permit(:asset_id, :incomingdate, :installdate, :installposition, :installer_id, :identification)    
  end
end
