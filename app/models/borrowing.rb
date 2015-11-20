class Borrowing < ActiveRecord::Base
  belongs_to :asset
  belongs_to :person
end
