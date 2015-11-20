class DeliveryItem < ActiveRecord::Base
  belongs_to :delivery
  belongs_to :product, polymorphic: true
end
