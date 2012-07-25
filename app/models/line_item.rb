class LineItem < ActiveRecord::Base
  belongs_to :stock_item
  belongs_to :cart
  belongs_to :order

  # Validate quantity of line items is a positive integer only
  validates :quantity,
            :presence => true,
            :numericality => {
                :only_integer => true,
                :greater_than_or_equal_to => 0
            }

  def subtotal
    total = stock_item.product.unit_price * quantity
  end

end
