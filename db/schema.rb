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

ActiveRecord::Schema.define(:version => 20131207031756) do

  create_table "books", :force => true do |t|
    t.string   "college_name"
    t.string   "dept_name"
    t.string   "major"
    t.string   "bib_author"
    t.text     "bib_title"
    t.string   "call_number_major"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "books", ["bib_author"], :name => "index_books_on_bib_author"
  add_index "books", ["bib_title"], :name => "index_books_on_bib_title"
  add_index "books", ["call_number_major"], :name => "index_books_on_call_number_major"
  add_index "books", ["college_name"], :name => "index_books_on_college_name"
  add_index "books", ["dept_name"], :name => "index_books_on_dept_name"
  add_index "books", ["major"], :name => "index_books_on_major"

  create_table "floors", :force => true do |t|
    t.integer  "floor_number"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "floors", ["floor_number"], :name => "index_floors_on_floor_number"

  create_table "sections", :force => true do |t|
    t.integer  "floor_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sections", ["floor_id"], :name => "index_sections_on_floor_id"
  add_index "sections", ["name"], :name => "index_sections_on_name"

end
