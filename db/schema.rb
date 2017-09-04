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

ActiveRecord::Schema.define(version: 20170904174525) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendances", force: :cascade do |t|
    t.integer "user_id"
    t.integer "seminar_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text "body_comment"
    t.text "title_comment"
    t.integer "user_id"
    t.integer "seminar_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.text "country_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.text "body_post"
    t.text "title_post"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "comment_id"
  end

  create_table "seminars", force: :cascade do |t|
    t.text "seminar_name"
    t.text "location_address"
    t.text "description"
    t.string "date"
    t.integer "country_id"
    t.integer "user_id"
    t.integer "teaching_module_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "created_by"
  end

  create_table "seminars_users", id: false, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "seminar_id", null: false
  end

  create_table "teaching_modules", force: :cascade do |t|
    t.text "teaching_module_title"
    t.text "teaching_module_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.text "email"
    t.string "phone_number"
    t.text "bio"
    t.text "photo"
    t.integer "country_id"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
