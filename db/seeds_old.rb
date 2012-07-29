# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

# Seed data for Genders model
Gender.delete_all
Gender.create(:gender => 'boy', :icon_url => 'icons/m.png')
Gender.create(:gender => 'girl', :icon_url => 'icons/f.png')
Gender.create(:gender => 'n/a', :icon_url => 'icons/n.png')


# Seed data for Sizes model
Size.delete_all
Size.create(:size_name => '0000', :description => 'newborn')
Size.create(:size_name => '000', :description => '0-3 months')
Size.create(:size_name => '00', :description => '3-6 months')
Size.create(:size_name => '0', :description => '6-12 months')
Size.create(:size_name => '1', :description => '1-2 years')
Size.create(:size_name => '2', :description => '2-3 years')
Size.create(:size_name => '3', :description => '3-4 years')
Size.create(:size_name => '4', :description => '4-5 years')
Size.create(:size_name => '5', :description => '5-6 years')
Size.create(:size_name => '6', :description => '6-7 years')
Size.create(:size_name => '7', :description => '7-8 years')
Size.create(:size_name => '8', :description => '8-9 years')

#Seed data for Categories model
Category.delete_all
Category.create(:category_name => 'Layette', :photo_file_name => 'layette.jpg', :photo_content_type => 'image/jpeg', :photo_file_size => 35688)
Category.create(:category_name => 'Baby Girl', :photo_file_name => 'baby_girl.jpg', :photo_content_type => 'image/jpeg', :photo_file_size => 27175)
Category.create(:category_name => 'Baby Boy', :photo_file_name => 'baby_boy.jpg', :photo_content_type => 'image/jpeg', :photo_file_size => 31812)
Category.create(:category_name => 'Baby Girl - 6 to 24 months', :photo_file_name => 'baby_girl_6_24_months.jpg', :photo_content_type => 'image/jpeg', :photo_file_size => 22001)
Category.create(:category_name => 'Baby Boy - 6 to 24 months', :photo_file_name => 'baby_boy_6_24_months.jpg', :photo_content_type => 'image/jpeg', :photo_file_size => 28100)
Category.create(:category_name => 'Christening', :photo_file_name => 'christening.jpg', :photo_content_type => 'image/jpeg', :photo_file_size => 18262)
Category.create(:category_name => 'Girl - 2 to 8 years', :photo_file_name => 'girl_2_8_years.jpg', :photo_content_type => 'image/jpeg', :photo_file_size => 23685)
Category.create(:category_name => 'Boy - 2 to 8 years', :photo_file_name => 'boy_2_8_years.jpg', :photo_content_type => 'image/jpeg', :photo_file_size => 24526)
Category.create(:category_name => 'Boy - Holy Communion', :photo_file_name => 'communion.jpg', :photo_content_type => 'image/jpeg', :photo_file_size => 22358)
Category.create(:category_name => 'Hats', :photo_file_name => 'hats.jpg', :photo_content_type => 'image/jpeg', :photo_file_size => 31733)


# Seed data for the Products model
Product.delete_all
Product.create(:product_name => 'Mayoral Red Dress', :description => 'Dress, Top & Leggings (Socks & Shoes Optional)', :unit_price => 26.95, :colour => 'red', :gender_id => 2, :active => 't', :category_id => 7, :photo_file_name => '118.jpg', :photo_content_type => 'image/jpeg', :photo_file_size => 82677)
Product.create(:product_name => 'Soft Velour Layette', :description => 'Cool cotton for the warmer days', :unit_price => 21.95, :colour => 'yellow', :gender_id => 3, :active => 't', :category_id => 1, :photo_file_name => 'layette.jpeg', :photo_content_type => 'image/jpeg', :photo_file_size => 61648)
Product.create(:product_name => 'Baby Girl Velour Sets', :description => 'New Born to 6 months Prices for complete set', :unit_price => 19.95, :colour => 'pink', :gender_id => 2, :active => 't', :category_id => 2, :photo_file_name => 'layette.jpeg', :photo_content_type => 'image/jpeg', :photo_file_size => 50842)
Product.create(:product_name => 'Mayoral White Dress', :description => 'Cotton dress and legging sets', :unit_price => 15.99, :colour => 'white', :gender_id => 2, :active => 't', :category_id => 4, :photo_file_name => 'layette.jpeg', :photo_content_type => 'image/jpeg', :photo_file_size => 55554)
Product.create(:product_name => 'Sun Dresses', :description => 'Purple Stripe Cotton dress', :unit_price => 34.95, :colour => 'purple', :gender_id => 2, :active => 'f', :category_id => 7, :photo_file_name => 'layette.jpeg', :photo_content_type => 'image/jpeg', :photo_file_size => 68749)
Product.create(:product_name => 'Sarah Louise Robe', :description => 'Chiffon dress with ornate design and bonnet to match.', :unit_price => 24.95, :colour => 'white', :gender_id => 3, :active => 't', :category_id => 6, :photo_file_name => 'layette.jpeg', :photo_content_type => 'image/jpeg', :photo_file_size => 57209)
Product.create(:product_name => 'Classic Robe', :description => 'Classic robe for baby boy or girl with celtic cross and hat', :unit_price => 119.95, :colour => 'white', :gender_id => 3, :active => 't', :category_id => 6, :photo_file_name => 'layette.jpeg', :photo_content_type => 'image/jpeg', :photo_file_size => 58285)
Product.create(:product_name => 'Red & White Check Dress', :description => 'Red & white check dress & panties', :unit_price => 29.95, :colour => 'red', :gender_id => 2, :active => 't', :category_id => 2, :photo_file_name => 'layette.jpeg', :photo_content_type => 'image/jpeg', :photo_file_size => 97555)
Product.create(:product_name => 'Romper Sets', :description => 'Navy lined trousers with cotton navy & cream sweatshirt to match', :unit_price => 34.95, :colour => 'blue', :gender_id => 1, :active => 't', :category_id => 3, :photo_file_name => 'layette.jpeg', :photo_content_type => 'image/jpeg', :photo_file_size => 140705)


# Create Stock Items for the Store
StockItem.delete_all
StockItem.create(:product_id => 1, :size_id => 7, :quantity_in_stock => 22)
StockItem.create(:product_id => 1, :size_id => 6, :quantity_in_stock => 41)
StockItem.create(:product_id => 2, :size_id => 1, :quantity_in_stock => 14)
StockItem.create(:product_id => 2, :size_id => 2, :quantity_in_stock => 15)
StockItem.create(:product_id => 2, :size_id => 3, :quantity_in_stock => 10)
StockItem.create(:product_id => 1, :size_id => 8, :quantity_in_stock => 26)
StockItem.create(:product_id => 1, :size_id => 9, :quantity_in_stock => 22)
StockItem.create(:product_id => 3, :size_id => 1, :quantity_in_stock => 17)
StockItem.create(:product_id => 3, :size_id => 2, :quantity_in_stock => 15)
StockItem.create(:product_id => 3, :size_id => 3, :quantity_in_stock => 24)
StockItem.create(:product_id => 4, :size_id => 4, :quantity_in_stock => 15)
StockItem.create(:product_id => 4, :size_id => 5, :quantity_in_stock => 18)
StockItem.create(:product_id => 5, :size_id => 6, :quantity_in_stock => 12)
StockItem.create(:product_id => 5, :size_id => 9, :quantity_in_stock => 12)
StockItem.create(:product_id => 5, :size_id => 11, :quantity_in_stock => 12)
StockItem.create(:product_id => 6, :size_id => 1, :quantity_in_stock => 12)
StockItem.create(:product_id => 6, :size_id => 2, :quantity_in_stock => 22)
StockItem.create(:product_id => 6, :size_id => 3, :quantity_in_stock => 13)
StockItem.create(:product_id => 7, :size_id => 1, :quantity_in_stock => 21)
StockItem.create(:product_id => 1, :size_id => 2, :quantity_in_stock => 15)
StockItem.create(:product_id => 7, :size_id => 3, :quantity_in_stock => 20)
StockItem.create(:product_id => 8, :size_id => 2, :quantity_in_stock => 35)
StockItem.create(:product_id => 8, :size_id => 4, :quantity_in_stock => 32)
StockItem.create(:product_id => 9, :size_id => 2, :quantity_in_stock => 12)
StockItem.create(:product_id => 9, :size_id => 4, :quantity_in_stock => 12)
StockItem.create(:product_id => 9, :size_id => 3, :quantity_in_stock => 20)

# Create Users
User.delete_all
User.create(:email => 'admin@email.com', :password => 'admin', :admin => true)
User.create(:email => 'wesley@email.com', :password => 'wesley', :admin => false)
User.create(:email => 'tunde@email.com', :password => 'tunde', :admin => false)
User.create(:email => 'brian@email.com', :password => 'brian', :admin => false)


#Create Orders
Order.delete_all
Order.create(:user_id => 2)
Order.create(:user_id => 3)
Order.create(:user_id => 4)
Order.create(:user_id => 2)
Order.create(:user_id => 3)
Order.create(:user_id => 2)
Order.create(:user_id => 3)
Order.create(:user_id => 4)
Order.create(:user_id => 4)
Order.create(:user_id => 2)
Order.create(:user_id => 2)
Order.create(:user_id => 3)
Order.create(:user_id => 4)

# Create line_items for the orders
LineItem.delete_all
LineItem.create(:stock_item_id => 5, :quantity => 2, :order_id => 1)
LineItem.create(:stock_item_id => 10, :quantity => 1, :order_id => 1)
LineItem.create(:stock_item_id => 23, :quantity => 1, :order_id => 1)
LineItem.create(:stock_item_id => 1, :quantity => 2, :order_id => 2)
LineItem.create(:stock_item_id => 2, :quantity => 1, :order_id => 3)
LineItem.create(:stock_item_id => 15, :quantity => 1, :order_id => 3)
LineItem.create(:stock_item_id => 20, :quantity => 1, :order_id => 3)
LineItem.create(:stock_item_id => 22, :quantity => 2, :order_id => 3)
LineItem.create(:stock_item_id => 10, :quantity => 1, :order_id => 4)
LineItem.create(:stock_item_id => 15, :quantity => 2, :order_id => 5)
LineItem.create(:stock_item_id => 16, :quantity => 1, :order_id => 6)
LineItem.create(:stock_item_id => 4, :quantity => 2, :order_id => 6)
LineItem.create(:stock_item_id => 6, :quantity => 1, :order_id => 7)
LineItem.create(:stock_item_id => 9, :quantity => 1, :order_id => 7)
LineItem.create(:stock_item_id => 15, :quantity => 1, :order_id => 7)
LineItem.create(:stock_item_id => 13, :quantity => 1, :order_id => 8)
LineItem.create(:stock_item_id => 14, :quantity => 1, :order_id => 8)
LineItem.create(:stock_item_id => 11, :quantity => 1, :order_id => 9)
LineItem.create(:stock_item_id => 17, :quantity => 1, :order_id => 10)
LineItem.create(:stock_item_id => 18, :quantity => 1, :order_id => 10)
LineItem.create(:stock_item_id => 10, :quantity => 4, :order_id => 11)
LineItem.create(:stock_item_id => 1, :quantity => 2, :order_id => 11)
LineItem.create(:stock_item_id => 2, :quantity => 1, :order_id => 12)
LineItem.create(:stock_item_id => 7, :quantity => 2, :order_id => 12)
LineItem.create(:stock_item_id => 5, :quantity => 1, :order_id => 13)
LineItem.create(:stock_item_id => 8, :quantity => 1, :order_id => 13)
LineItem.create(:stock_item_id => 11, :quantity => 1, :order_id => 13)
LineItem.create(:stock_item_id => 6, :quantity => 1, :order_id => 13)
LineItem.create(:stock_item_id => 23, :quantity => 1, :order_id => 13)
