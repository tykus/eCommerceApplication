class Product < ActiveRecord::Base
  # Every product belongs to exactly one category
  belongs_to :category

  # Every product is for exactly one gender
  belongs_to :gender

  # Associative Relationship with size model through stock_items
  has_many :stock_items, :dependent => :destroy
  has_many :sizes, :through => :stock_items, :foreign_key => :size_id

  # Paperclip:
  has_attached_file :photo,
                    :styles => { :small => "100x100#",
                                 :store => "180x180>",
                                 :large => "400x400" }

  # Ensure that the product is created with a product_name
  validates :product_name, :presence => true

  # Ensure that every product has a valid price, i.e. > 0.00
  validates_numericality_of :unit_price, :greater_than => 0.00



  # Search Products Functionality
  #
  # @reference Laptop Shop Tutorial 2
  #
  belongs_to :user
  has_many_ :line_items


  def self.search(search_query)
    if search_query
      find(:all, :conditions => ['product_name LIKE ?', "%#{search_query}%"])
    else
      find(:all)
    end
  end

end

