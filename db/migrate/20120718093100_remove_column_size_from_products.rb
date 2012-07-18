class RemoveColumnSizeFromProducts < ActiveRecord::Migration
  def self.up
    remove_column :products, :size
  end

  def self.down
    add_column :products, :size, :integer
  end
end
