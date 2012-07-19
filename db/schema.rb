# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120718224538) do

  create_table "carts", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string   "category_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
  end

  create_table "genders", :force => true do |t|
    t.string   "gender"
    t.string   "icon_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "line_items", :force => true do |t|
    t.integer  "product_id"
    t.integer  "cart_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity",   :default => 1
  end

  create_table "products", :force => true do |t|
    t.string   "product_name"
    t.text     "description"
    t.decimal  "unit_price"
    t.string   "picture"
    t.string   "colour"
    t.integer  "gender_id",          :limit => 255
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
  end

  create_table "sizes", :force => true do |t|
    t.string   "size_name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stock_items", :force => true do |t|
    t.integer  "product_id"
    t.integer  "size_id"
    t.integer  "quantity_in_stock"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stock_items", ["product_id", "size_id"], :name => "index_stock_items_on_product_id_and_size_id", :unique => true

end
