class StockItem < ActiveRecord::Base
  # Associative relationship with product and size models
  belongs_to :product
  belongs_to :size

  # Validation
  # Ensure that the product_id and size_id are present
  validates :product_id,
            :size_id,
            presence: true,

  # Ensure the amount of stock is greater than 0
  # validates_numericality_of :quantity_in_stock, :greater_than_or_equal_to => 0

end
