class ComponentItem < ActiveRecord::Base
  belongs_to :component
  belongs_to :asset_item
  belongs_to :installer, class_name: "Person", foreign_key: "installer_id"
end
