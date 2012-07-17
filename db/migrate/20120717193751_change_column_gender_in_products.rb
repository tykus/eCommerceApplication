class ChangeColumnGenderInProducts < ActiveRecord::Migration
  def self.up
    # Changes the data type of the gender column in the product model from string to integer
    change_column :products, :gender, :integer

    # Renames the attribute to gender_id
    rename_column :products, :gender, :gender_id
  end

  def self.down
    change_column :products, :gender, :string
    rename_column :products, :gender_id, :gender
  end
end


