class Product < ActiveRecord::Base
  # Every product belongs to exactly one category
  belongs_to :category

  # Every product is for exactly one gender
  belongs_to :gender

  # Associative Relationship with size model thru stock_items
  has_many :stock_items
  has_many :sizes, :through => :stock_items



  # Paperclip:
  has_attached_file :photo

  # Ensure that the product is created with a product_name
  validates :product_name, presence: true

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

