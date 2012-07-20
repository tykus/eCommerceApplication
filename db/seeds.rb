# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

# Seed data for Genders model
Gender.delete_all
Gender.create(:gender => 'boy',
              :icon_url => 'icons/m.png'
)
Gender.create(:gender => 'girl',
              :icon_url => 'icons/f.png'
)
Gender.create(:gender => 'n/a',
              :icon_url => 'icons/n.png'
)


# Seed data for Sizes model
Size.delete_all
Size.create(:size_name => '0000',
            :description => 'newborn'
)
Size.create(:size_name => '000',
            :description => '0-3 months'
)
Size.create(:size_name => '00',
            :description => '3-6 months'
)
Size.create(:size_name => '0',
            :description => '6-12 months'
)
Size.create(:size_name => '1',
            :description => '1-2 years'
)
Size.create(:size_name => '2',
            :description => '2-3 years'
)
Size.create(:size_name => '3',
            :description => '3-4 years'
)
Size.create(:size_name => '4',
            :description => '4-5 years'
)
Size.create(:size_name => '5',
            :description => '5-6 years'
)
Size.create(:size_name => '6',
            :description => '6-7 years'
)
Size.create(:size_name => '7',
            :description => '7-8 years'
)
Size.create(:size_name => '8',
            :description => '8-9 years'
)




#Seed data for Categories model
Category.delete_all
Category.create(:category_name => 'Layette')
Category.create(:category_name => 'Baby Girl')
Category.create(:category_name => 'Baby Boy')
Category.create(:category_name => 'Baby Girl - 6 to 24 months')
Category.create(:category_name => 'Baby Boy - 6 to 24 months')
Category.create(:category_name => 'Christening')
Category.create(:category_name => 'Girl - 2 to 8 years')
Category.create(:category_name => 'Boy - 2 to 8 years')
Category.create(:category_name => 'Boy - Holy Communion')
Category.create(:category_name => 'Hats')


# Seed data for the Products model
Product.delete_all
Product.create(:product_name => 'Mayoral', :description => 'Dress, Top & Leggings\r\n(Socks & Shoes Optional)', :unit_price => 26.95, :colour => 'red', :gender_id => 2, :active => 't', :category_id => 7, :photo_file_name => '118.jpg', :photo_content_type => 'image/jpeg', :photo_file_size => 82677)
Product.create(:product_name => 'Soft Velour Layette', :description => 'Cool cotton for the warmer days', :unit_price => 21.95, :colour => 'yellow', :gender_id => 3, :active => 't', :category_id => 1, :photo_file_name => 'layette.jpeg', :photo_content_type => 'image/jpeg', :photo_file_size => 61648)
Product.create(:product_name => 'Baby Girl Velour Sets', :description => 'New Born to 6 months\r\nPrices for complete set', :unit_price => 19.95, :colour => 'pink', :gender_id => 2, :active => 't', :category_id => 2, :photo_file_name => 'layette.jpeg', :photo_content_type => 'image/jpeg', :photo_file_size => 50842)
Product.create(:product_name => 'Mayoral', :description => 'Cotton dress and legging sets', :unit_price => 15.99, :colour => 'white', :gender_id => 2, :active => 't', :category_id => 4, :photo_file_name => 'layette.jpeg', :photo_content_type => 'image/jpeg', :photo_file_size => 55554)
Product.create(:product_name => 'Sun Dresses', :description => 'Purple Stripe Cotton dress', :unit_price => 34.95, :colour => 'purple', :gender_id => 2, :active => 'f', :category_id => 7, :photo_file_name => 'layette.jpeg', :photo_content_type => 'image/jpeg', :photo_file_size => 68749)
Product.create(:product_name => 'Sarah Louise Robe', :description => 'Chiffon dress with ornate design and bonnet to match.', :unit_price => 24.95, :colour => 'white', :gender_id => 3, :active => 't', :category_id => 6, :photo_file_name => 'layette.jpeg', :photo_content_type => 'image/jpeg', :photo_file_size => 57209)
Product.create(:product_name => 'Classic Robe', :description => 'Classic robe for baby boy or girl with celtic cross and hat', :unit_price => 119.95, :colour => 'white', :gender_id => 3, :active => 't', :category_id => 6, :photo_file_name => 'layette.jpeg', :photo_content_type => 'image/jpeg', :photo_file_size => 58285)
Product.create(:product_name => 'Red & White Check Dress', :description => 'Red & white check dress & panties', :unit_price => 29.95, :colour => 'red', :gender_id => 2, :active => 't', :category_id => 2, :photo_file_name => 'layette.jpeg', :photo_content_type => 'image/jpeg', :photo_file_size => 97555)
Product.create(:product_name => 'Romper Sets', :description => 'Navy lined trousers with cotton navy & cream sweatshirt to match', :unit_price => 34.95, :colour => 'blue', :gender_id => 1, :active => 't', :category_id => 3, :photo_file_name => 'layette.jpeg', :photo_content_type => 'image/jpeg', :photo_file_size => 140705)


# Create Stock Items for the Store
StockItem.create(:product_id => 1, :size_id => 7, :quantity_in_stock => 2)
StockItem.create(:product_id => 1, :size_id => 6, :quantity_in_stock => 4)
StockItem.create(:product_id => 2, :size_id => 1, :quantity_in_stock => 4)
StockItem.create(:product_id => 2, :size_id => 2, :quantity_in_stock => 5)
StockItem.create(:product_id => 2, :size_id => 3, :quantity_in_stock => 10)
StockItem.create(:product_id => 1, :size_id => 8, :quantity_in_stock => 6)
StockItem.create(:product_id => 1, :size_id => 9, :quantity_in_stock => 2)
StockItem.create(:product_id => 3, :size_id => 1, :quantity_in_stock => 17)
StockItem.create(:product_id => 3, :size_id => 2, :quantity_in_stock => 15)
StockItem.create(:product_id => 3, :size_id => 3, :quantity_in_stock => 4)
StockItem.create(:product_id => 4, :size_id => 4, :quantity_in_stock => 5)
StockItem.create(:product_id => 4, :size_id => 5, :quantity_in_stock => 8)
StockItem.create(:product_id => 5, :size_id => 6, :quantity_in_stock => 12)
StockItem.create(:product_id => 5, :size_id => 9, :quantity_in_stock => 2)
StockItem.create(:product_id => 5, :size_id => 11, :quantity_in_stock => 2)
StockItem.create(:product_id => 6, :size_id => 1, :quantity_in_stock => 2)
StockItem.create(:product_id => 6, :size_id => 2, :quantity_in_stock => 2)
StockItem.create(:product_id => 6, :size_id => 3, :quantity_in_stock => 3)
StockItem.create(:product_id => 7, :size_id => 1, :quantity_in_stock => 1)
StockItem.create(:product_id => 1, :size_id => 2, :quantity_in_stock => 5)
StockItem.create(:product_id => 7, :size_id => 3, :quantity_in_stock => 0)
StockItem.create(:product_id => 8, :size_id => 2, :quantity_in_stock => 5)
StockItem.create(:product_id => 8, :size_id => 4, :quantity_in_stock => 2)
StockItem.create(:product_id => 9, :size_id => 2, :quantity_in_stock => 2)
StockItem.create(:product_id => 9, :size_id => 4, :quantity_in_stock => 2)
StockItem.create(:product_id => 9, :size_id => 3, :quantity_in_stock => 0)

