class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :product_name
      t.text :description
      t.decimal :unit_price
      t.string :picture
      t.string :colour
      t.integer :size
      t.string :gender
      t.boolean :active

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
