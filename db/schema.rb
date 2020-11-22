# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_22_080525) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "steams", force: :cascade do |t|
    t.integer "appid"
    t.string "name"
    t.date "release_date"
    t.string "english"
    t.string "developer"
    t.string "publisher"
    t.string "platforms"
    t.string "required_age"
    t.string "categories"
    t.string "genres"
    t.string "steamspy_tags"
    t.integer "achievements"
    t.integer "positive_ratings"
    t.integer "negative_ratings"
    t.integer "average_playtime"
    t.integer "median_playtime"
    t.string "owners"
    t.decimal "price", precision: 14, scale: 4
    t.text "detailed_description"
    t.text "about_the_game"
    t.text "short_description"
    t.string "header_image"
    t.json "screenshots"
    t.string "background"
    t.json "movies"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["appid"], name: "index_steams_on_appid"
  end

  create_table "users", force: :cascade do |t|
    t.string "nickname"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
