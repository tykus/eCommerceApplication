class Category < ActiveRecord::Base
  # A category may have zero or many products
  has_many :products, :dependent => :destroy

  # Paperclip:
  has_attached_file :photo

  # Each category must have a category name
  validates :category_name,
            :presence => true
end
