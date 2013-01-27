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

ActiveRecord::Schema.define(:version => 20130127054028) do

  create_table "questions", :force => true do |t|
    t.integer  "user_id"
    t.text     "content"
    t.integer  "rogome_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "answer"
  end

  add_index "questions", ["rogome_id"], :name => "index_questions_on_rogome_id"
  add_index "questions", ["user_id"], :name => "index_questions_on_user_id"

  create_table "rogomes", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "status"
  end

  add_index "rogomes", ["user_id"], :name => "index_rogomes_on_user_id"

  create_table "user_upvotes", :force => true do |t|
    t.integer  "user_id"
    t.integer  "question_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "user_upvotes", ["question_id"], :name => "index_user_upvotes_on_question_id"
  add_index "user_upvotes", ["user_id"], :name => "index_user_upvotes_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "display_name"
    t.string   "bio"
    t.string   "twitter"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
