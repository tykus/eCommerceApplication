class Product < ActiveRecord::Base

  # Validation of data begin sent to the Product model
  # We must have a product name, a description and a product image
  validates :product_name, :description, :picture, presence: true

  # Ensure that every product has a valid price, i.e. > 0.00
  validates_numericality_of :unit_price, :greater_than => 0.00




  # Search Products Functionality
  def self.search(search_query)
    if search_query
      find(:all, :conditions => ['product_name LIKE ?', "%#{search_query}%"])
    else
      find(:all)
    end
  end
end

