class AddCompositeKeyToStockItems < ActiveRecord::Migration
  def self.up
    # Create a new composite key comprised of product_id and size_id
    add_index :stock_items, [:product_id, :size_id], :unique => true

  end

  def self.down
    remove_index :stock_items, :column => [:product_id, :size_id]
  end
end
