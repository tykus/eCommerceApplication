# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

# Seed data for Gender model
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


# Seed data for the Product model
Product.delete_all
Product.create(:product_name =>'Range of Hats',
               :description => 'We stock a fabulous range of hats Cotton Pull on hats in all colours available from 0 to 3 Months Stripe and Stocking hats in different colours also',
               :unit_price => 6.95,
               :picture => 'seeds/129.jpg',
               :colour => 'multi',
               :size => 0,
               :gender_id => 3,
               :active => true,
               :category_id => 9
)
Product.create(:product_name =>'Phister & Philina',
               :description => 'Purple & Lime Cotton Dress & Legging. Mayoral Cardigans to compliment outfits from 13.95 in all colours', 
               :unit_price => 49.95, 
               :picture => 'seeds/227.jpg', 
               :colour => 'purple', 
               :size => 1, 
               :gender_id => 2, 
               :active => true, 
               :category_id => 1
)
Product.create(:product_name =>'Mayoral',
:description => 'Coral waisted dress with pleat effect.', 
               :unit_price => 34.95, 
               :picture => 'seeds/266.jpg', 
               :colour => 'pink', 
               :size => 3, 
               :gender_id => 2, 
               :active => true, 
               :category_id => 6
)
Product.create(:product_name =>'Mayoral',
:description => 'Pretty navy & white polka dot dress. Available in coral also.', 
               :unit_price => 41.95, 
               :picture => 'seeds/267.jpg', 
               :colour => 'white',
               :size => 4, 
               :gender_id => 2, 
               :active => true, 
               :category_id => 6
)
Product.create(:product_name =>'Loff', 
               :description => 'Puffball dress & leggings in Coral with Mayoral cardigan to match. (64.95 for set)', 
               :unit_price => 64.95,
:picture => 'seeds/272.jpg', 
               :colour => 'pink', 
               :size => 4, 
               :gender_id => 2, 
               :active => true, 
               :category_id => 6
)
Product.create(:product_name =>'Tucha', 
               :description => 'Orange & lime stripe romper & available in two piece also.', 
               :unit_price => 29.95,
               :picture => 'seeds/291.jpg',
               :colour => 'orange',
               :size => 0, 
               :gender_id => 3, 
               :active => true, 
               :category_id => 0
)
Product.create(:product_name =>'Tucha',
               :description => 'New Baby Range Velour red, white & navy romper. Available in two piece suit also.',
               :unit_price => 29.95,
               :picture => 'seeds/292.jpg',
               :colour => 'red',
               :size => 0,
               :gender_id => 3,
               :active => true,
               :category_id => 0
)
Product.create(:product_name =>'Tucha',
               :description => 'Cerise & lime velour two piece.',
               :unit_price => 31.95,
               :picture => 'seeds/295.jpg',
               :colour => 'pink',
               :size => 0,
               :gender_id => 2,
               :active => true,
               :category_id => 1
)
Product.create(:product_name =>'Tucha',
               :description => 'Turquoise & lime velour two piece.',
               :unit_price => 31.95,
               :picture => 'seeds/297.jpg',
               :colour => 'green',
               :size => 0,
               :gender_id => 3,
               :active => true,
               :category_id => 0
)
Product.create(:product_name =>'Trocadero',
               :description => 'Pink floral dress with bows on shoulders.',
               :unit_price => 41.95,
               :picture => 'seeds/304.jpg',
               :colour => 'pink',
               :size => 3,
               :gender_id => 2,
               :active => true,
               :category_id => 6)
Product.create(:product_name =>'Dodi-Petto',
               :description => 'Mid Blue & white stripe sweatshirt with white collar and cotton trousers to match.',
               :unit_price => 41.95,
               :picture => 'seeds/314.jpg',
               :colour => 'blue',
               :size => 2,
               :gender_id => 1,
               :active => true,
               :category_id => 7
)
Product.create(:product_name =>'Du Du',
               :description => 'Red velour dresses with multicoloured stripped tights. Ideal Christmas dress - 29.95 for dress & tights matching.',
               :unit_price => 29.95,
               :picture => 'seeds/367.jpg',
               :colour => 'red',
               :size => 0,
               :gender_id => 2,
               :active => true,
               :category_id => 1
)
Product.create(:product_name =>'First Occasion',
               :description => 'Silk designed Christening robe with matching designed bonnet.',
               :unit_price => 104.95,
               :picture => 'seeds/376.jpg',
               :colour => 'white',
               :size => 0,
               :gender_id => 3,
               :active => true,
               :category_id => 0
)
Product.create(:product_name =>'First Occasion',
               :description => 'Pearl & Se-quince silk gown with bonnet matching.',
               :unit_price => 104.95,
               :picture => 'seeds/377.jpg',
               :colour => 'white',
               :size => 0,
               :gender_id => 3,
               :active => true,
               :category_id => 0
)
Product.create(:product_name =>'Darcy Brown',
               :description => 'Cerise pink velvet skirt with netting & pink cotton self stripe top with bow.',
               :unit_price => 79.95,
               :picture => 'seeds/386.jpg',
               :colour => 'pink',
               :size => 1,
               :gender_id => 2,
               :active => true,
               :category_id => 1
)

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

