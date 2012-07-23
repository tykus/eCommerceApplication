class LineItem < ActiveRecord::Base
  belongs_to :stock_item
  belongs_to :cart
  belongs_to :order

  def subtotal
    total = stock_item.product.unit_price * quantity
  end
end
