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

ActiveRecord::Schema.define(:version => 20090318234453) do

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

end
