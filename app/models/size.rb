class Size < ActiveRecord::Base
  has_many :stock_items
  has_many :products, :through => :stock_items



end
