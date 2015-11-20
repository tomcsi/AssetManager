class Asset < ActiveRecord::Base
  has_many :components
  has_many :borrowings
  has_many :delivery_items, as: :products
  has_many :items, class_name: "AssetItem"
  belongs_to :responsible, class_name: "Person", foreign_key: "responsible_id"
  belongs_to :category
end
