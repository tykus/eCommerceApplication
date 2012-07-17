class Gender < ActiveRecord::Base
  # A gender type can be associated with many products
  has_many :products
end
