class RemovePictureColumnFromProducts < ActiveRecord::Migration

  # Picture column was used at initial setup only - photo column replaces

  def self.up
    remove_column :products, :picture
  end

  def self.down
    add_column :products, :picture, :string
  end
end
