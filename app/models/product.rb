class Product < ActiveRecord::Base
  belongs_to :category


  # Validation of data begin sent to the Product model
  # We must have a product name, a description and a product image
  #
  #  Classname e.g. product.rb
  #
  #  Rev 1
  #
  #  Date 16-07-2012
  #
  #  @author Brian O'Sullivan, 11114835
  #  @reference Agile Web Development with Rails, 4th ed.
  #
  #


  validates :product_name, :description, :picture, presence: true

  # Ensure that every product has a valid price, i.e. > 0.00
  validates_numericality_of :unit_price, :greater_than => 0.00

  # Search Products Functionality
  #
  # @reference Laptop Shop Tutorial 2
  #

  def self.search(search_query)
    if search_query
      find(:all, :conditions => ['product_name LIKE ?', "%#{search_query}%"])
    else
      find(:all)
    end
  end

end

