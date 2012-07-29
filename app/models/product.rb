#
# product.rb
#
# Version 1
#
# 27/07/2012
#
# @author Brian O'Sullivan 11114835
#
# @reference LaptopShop Tutorial - Part 1
# @reference   http://zachholman.com/2010/01/simplifying-rails-controllers-with-named_scopes/
#

class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :gender
  belongs_to :user

  has_many :stock_items, :dependent => :destroy
  has_many :sizes, :through => :stock_items, :foreign_key => :size_id
  has_many :line_items
  has_many :orders, :through => :line_items


  # @reference   http://zachholman.com/2010/01/simplifying-rails-controllers-with-named_scopes/
  # Note: products which are gender neutral will be returned in both cases
  scope :with_gender, lambda {|gender| gender.present? ? {:conditions => [ "gender_id IN (?,3)", gender ] }:{} }
  scope :with_category, lambda {|category| category.present? ? {:conditions => { :category_id => category } }:{} }
  scope :with_query, lambda {|query| query.present? ? {:conditions => ['product_name LIKE ?', "%#{query}%"] }:{} }
  scope :is_active, :conditions => { :active => true }
  scope :in_size, lambda {|size| size.present? ? joins("join stock_items on stock_items.product_id = products.id").where("size_id = ?", size):{}}
  #SELECT * FROM products JOIN stock_items ON stock_items.product_id = products.id WHERE stock_items.size_id = 1;


  # Paperclip photo attributes
  has_attached_file :photo,
                    :styles => { :small => "100x100#",
                                 :store => "180x180#",
                                 :large => "400x400#" }

  # Ensure that the product is created with a product_name
  validates :product_name,
            :presence => true

  # Ensure that the product is created with a photo
  validates :photo,
            :presence => true

  # Ensure that every product has a valid price, i.e. > 0.00
  validates :unit_price,
            :presence => true,
            :numericality => {
                :greater_than_or_equal_to => 0.01
            }

end

