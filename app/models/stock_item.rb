#
# stock_item.rb
#
# Version 1
#
# 27/07/2012
#
# @author Brian O'Sullivan 11114835
#
# @reference http://railscasts.com/episodes/47-two-many-to-many/
#

class StockItem < ActiveRecord::Base
  # Associative relationship with product and size models
  belongs_to :product
  belongs_to :size

  has_many :line_items

  scope :sorted, :order => "product_id, size_id"
  scope :for_product, lambda {|product| product.present? ? {:conditions => {:product_id => product }} :{}}
  scope :in_stock, :conditions => [ "quantity_in_stock > 0" ]



  # VALIDATION CRITERIA

  # Ensure that the product_id and size_id are present
  validates :product_id,
            :size_id,
            :presence => true

  # Ensure that there is one entry for any size of a particular product
  validates_uniqueness_of :product_id, :scope=>:size_id

  # Validate quantity in stock is a positive integer only
  validates :quantity_in_stock,
            :presence => true,
            :numericality => {
                :only_integer => true,
                :greater_than_or_equal_to => 0
            }


  # Returns all StockItem objects which have quantity in_stock > 0
  # @author Brian O'Sullivan 11114835
  def self.stock_available
    find(:all, :conditions => 'quantity_in_stock > 0')
  end

  # Checks if there is enough of a stock_item
  # @author Brian O'Sullivan 11114835
  def self.have_stock?(line_item)
    return false unless line_item.quantity <= line_item.stock_item.quantity_in_stock
  end

  # Reduce the quantity_in_stock resulting from the given order
  # @author Brian O'Sullivan 11114835
  def self.picker!(order)
    order.line_items.each do |line_item|
      @stock_item = line_item.stock_item
      if have_stock?(line_item)
        @stock_item.quantity_in_stock -= line_item.quantity
        @stock_item.save
      end
    end
  end
end
