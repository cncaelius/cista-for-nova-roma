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

ActiveRecord::Schema.define(:version => 20090322040001) do

  create_table "ballot_items", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ballot_id"
    t.string   "description"
  end

  create_table "ballots", :force => true do |t|
    t.integer  "election_id"
    t.text     "issue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "elections", :force => true do |t|
    t.string   "comitia"
    t.string   "presmag"
    t.datetime "startdate"
    t.datetime "enddate"
    t.integer  "centprae"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "options", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ballot_item_id"
    t.string   "text"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "login",                              :null => false
    t.string   "crypted_password",                   :null => false
    t.string   "password_salt",                      :null => false
    t.string   "persistence_token",                  :null => false
    t.string   "single_access_token",                :null => false
    t.string   "perishable_token",                   :null => false
    t.integer  "login_count",         :default => 0, :null => false
    t.integer  "failed_login_count",  :default => 0, :null => false
  end

  create_table "votes", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "option_id"
    t.integer  "user_id"
  end

end
