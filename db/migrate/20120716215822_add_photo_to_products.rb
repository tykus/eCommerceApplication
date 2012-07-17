class AddPhotoToProducts < ActiveRecord::Migration

  #  Class: AddPhotoToProducts
  #         add_photo_to_products.rb
  #
  #  Rev 1
  #
  #  Date e.g. 29/10/2009
  #
  #  @reference http://burm.net/2008/10/07/the-ruby-on-rails-paperclip-plugin-tutorial-easy-image-attachments/



def self.up
    add_column :products, :photo_file_name, :string
    add_column :products, :photo_content_type, :string
    add_column :products, :photo_file_size, :integer
  end

  def self.down
    remove_column :products, :photo_file_name
    remove_column :products, :photo_content_type
    remove_column :products, :photo_file_size
  end
end
