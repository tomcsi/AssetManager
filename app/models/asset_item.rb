class AssetItem < ActiveRecord::Base
  belongs_to :asset
  belongs_to :installer, class_name: "Person", foreign_key: "installer_id"
  
  def name
    "#{self.asset.name} (#{self.identification})"
  end
end
