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

ActiveRecord::Schema.define(:version => 20170514201534) do

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

  create_table "pictures", :force => true do |t|
    t.string   "title"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "pictures", ["imageable_id", "imageable_type"], :name => "index_pictures_on_imageable_id_and_imageable_type"

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "published_at"
    t.integer  "user_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.datetime "birthday"
    t.datetime "created_at",                       :null => false
    t.datetime "updated_at",                       :null => false
    t.string   "password_salt"
    t.integer  "posts_count",   :default => 0
    t.string   "password_hash"
    t.boolean  "active",        :default => false
  end

end
