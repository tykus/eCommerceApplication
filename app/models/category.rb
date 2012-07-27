class Category < ActiveRecord::Base
  # A category may have zero or many products
  has_many :products, :dependent => :destroy

  # Paperclip:
  # Paperclip:
  has_attached_file :photo,
                    :styles => { :store => "290x100#",
                                 :small => "73x25#",
                    }

  # Each category must have a category name
  validates :category_name,
            :presence => true
end
