class Consumable < ActiveRecord::Base
  belongs_to :responsible, class_name: "Person", foreign_key: "responsible_id"
  belongs_to :category
  
end
