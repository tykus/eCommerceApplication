class CreateStockItems < ActiveRecord::Migration
  def self.up
    create_table :stock_items do |t|
      t.integer :product_id
      t.integer :size_id
      t.integer :quantity_in_stock

      t.timestamps
    end
  end

  def self.down
    drop_table :stock_items
  end
end
