#
# cart.rb
#
# Version 1
#
# 27/07/2012
#
# @author Brian O'Sullivan 11114835
# @author Ayotunde Odusanya
#
# @reference LaptopShop tutorial 3

class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :line_items, :dependent => :destroy

  # @reference: laptop_shop tutorial 3
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

  # @reference: laptop_shop tutorial 4
  def total_price

    total=0
    line_items.each do |line_item|
      total += line_item.stock_item.product.unit_price * line_item.quantity
    end
    total
  end

  # @author Brian O'Sullivan
  def count
    count = 0
    line_items.each do |line_item|
      count += line_item.quantity
    end
    count
  end

end

