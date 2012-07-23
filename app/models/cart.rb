class Cart < ActiveRecord::Base

  belongs_to :user
  has_many :line_items, :dependent => :destroy


  def add_product(stock_item)
    current_item = line_items.where(:stock_item_id => stock_item.id).first
    if current_item
      current_item.quantity += 1
    else
      current_item = LineItem.new(:stock_item_id => stock_item.id)
      line_items << current_item
    end
    current_item
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

  #
  # count of products in cart
  # @author Brian
  #
  def count
    count = 0
    line_items.each do |line_item|
      count += line_item.quantity
    end
    count
  end



end

