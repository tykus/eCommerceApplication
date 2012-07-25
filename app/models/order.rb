class Order < ActiveRecord::Base
  belongs_to :user
  has_many :line_items, :dependent => :destroy


  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end



  # calculate total price for products in cart
  # @reference: laptop_shop tutorial 4

  def total_price
    total=0
    line_items.each do |line_item|
      total += line_item.stock_item.product.unit_price * line_item.quantity
    end
    total
  end

end
