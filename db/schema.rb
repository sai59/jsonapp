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

ActiveRecord::Schema.define(:version => 20140122175148) do

  create_table "authors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "slug"
  end

  create_table "authors_books", :id => false, :force => true do |t|
    t.integer "author_id"
    t.integer "book_id"
  end

  add_index "authors_books", ["author_id", "book_id"], :name => "index_authors_books_on_author_id_and_book_id"
  add_index "authors_books", ["author_id"], :name => "index_authors_books_on_author_id"

  create_table "books", :force => true do |t|
    t.decimal  "dewey_normal",              :precision => 10, :scale => 0
    t.string   "title_long"
    t.text     "publisher_text"
    t.string   "marc_enc_level"
    t.string   "title_latin"
    t.string   "edition_info"
    t.string   "isbn13"
    t.string   "isbn10"
    t.string   "language"
    t.string   "dewey_decimal"
    t.string   "publisher_id"
    t.string   "subject_ids"
    t.text     "physical_description_text"
    t.text     "summary"
    t.string   "publisher_name"
    t.string   "title"
    t.text     "awards_text"
    t.text     "urls_text"
    t.string   "book_id"
    t.string   "lcc_number"
    t.datetime "created_at",                                               :null => false
    t.datetime "updated_at",                                               :null => false
    t.text     "notes"
  end

end
