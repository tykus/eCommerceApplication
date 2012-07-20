class AddUserIdToStockItemId < ActiveRecord::Migration
  def self.up
    add_column :stock_items, :user_id, :integer
  end

  def self.down
    remove_column :stock_items, :user_id
  end
end
