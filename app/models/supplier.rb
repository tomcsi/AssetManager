class Supplier < ActiveRecord::Base
  has_many :deliveries
end
