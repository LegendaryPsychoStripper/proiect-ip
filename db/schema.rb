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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170406115713) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "seats"
    t.datetime "start"
    t.datetime "end"
    t.string   "color"
    t.string   "ownerid"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "uid"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "status"
    t.string   "email"
    t.string   "is_student"
    t.string   "is_teacher"
    t.string   "is_management"
    t.string   "is_admin"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
