class Delivery < ActiveRecord::Base
  belongs_to :supplier
  belongs_to :person
  has_many :delivery_items
end
