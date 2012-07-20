class RenameProductIdInLineItems < ActiveRecord::Migration
  def self.up
    rename_column :line_items, :product_id, :stock_item_id
  end

  def self.down
    rename_column :line_items, :stock_item_id, :product_id
  end
end
