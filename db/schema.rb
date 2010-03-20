# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100320011056) do

  create_table "events", :force => true do |t|
    t.string "title"
    t.string "subtitle"
    t.string "url"
    t.string "date1"
    t.string "date2"
    t.string "address1"
    t.string "address2"
    t.string "city"
  end

  create_table "images", :force => true do |t|
    t.string  "url"
    t.integer "item"
  end

  create_table "items", :force => true do |t|
    t.string  "title"
    t.string  "category"
    t.string  "country"
    t.string  "year"
    t.string  "dimensions"
    t.string  "price"
    t.text    "description"
    t.string  "url"
    t.integer "home"
    t.integer "collection"
    t.integer "archive"
  end

  create_table "pressitems", :force => true do |t|
    t.string "title"
    t.string "source"
    t.string "date"
    t.string "format"
    t.string "url"
    t.string "linkurl"
  end

  create_table "showimages", :force => true do |t|
    t.string  "url"
    t.integer "show"
  end

  create_table "shows", :force => true do |t|
    t.string "artist"
    t.string "title"
    t.string "date"
    t.text   "description"
    t.string "url"
  end

end
