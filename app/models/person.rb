class Person < ActiveRecord::Base
  has_many :borrowings
  has_many :deliveries
end
