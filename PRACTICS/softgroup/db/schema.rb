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

ActiveRecord::Schema.define(:version => 20170423202645) do

  create_table "batons", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "book_pages", :force => true do |t|
    t.text     "body"
    t.integer  "book_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "books", :force => true do |t|
    t.string   "author"
    t.string   "title"
    t.integer  "page_counter"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.date     "year"
    t.text     "body"
  end

  add_index "books", ["title"], :name => "index_books_on_title"

  create_table "comments", :force => true do |t|
    t.string   "title"
    t.string   "body"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "employees", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "goods", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "humen", :force => true do |t|
    t.string   "name"
    t.integer  "age"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "images", :force => true do |t|
    t.string   "url"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "share_image_id"
    t.string   "share_image_type"
  end

  add_index "images", ["share_image_type", "share_image_id"], :name => "index_images_on_share_image_type_and_share_image_id"

  create_table "kassirs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "photos", :force => true do |t|
    t.string   "title"
    t.integer  "pic_for_all_id"
    t.string   "pic_for_all_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "photos", ["pic_for_all_id"], :name => "index_photos_on_pic_for_all_id"

  create_table "pictures", :force => true do |t|
    t.string   "name_of_pic"
    t.integer  "pic_for_all_id"
    t.string   "pic_for_all_type"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "published_at"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "profiles", :force => true do |t|
    t.string   "address"
    t.string   "phone"
    t.text     "about"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tasks", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tasks_users", :force => true do |t|
    t.integer  "user_id"
    t.integer  "task_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "password_hash"
    t.string   "email"
    t.datetime "birthday"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.string   "password_salt"
    t.integer  "posts_count",   :default => 0
  end

  create_table "vehicles", :force => true do |t|
    t.string   "type"
    t.string   "color"
    t.decimal  "price",      :precision => 10, :scale => 2
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "workers", :force => true do |t|
    t.integer  "manager_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

end
