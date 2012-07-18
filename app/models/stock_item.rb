class StockItem < ActiveRecord::Base
  # Associative relationship with product and size models
  belongs_to :product
  belongs_to :size


end
