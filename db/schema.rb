# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_07_11_145234) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cinemas", force: :cascade do |t|
    t.bigint "movie_id", null: false
    t.bigint "theater_id", null: false
    t.boolean "is_showing", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_cinemas_on_movie_id"
    t.index ["theater_id"], name: "index_cinemas_on_theater_id"
  end

  create_table "critics", force: :cascade do |t|
    t.string "preferred_name"
    t.string "surname"
    t.string "organization_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.integer "runtime_in_minutes"
    t.integer "rating"
    t.text "description"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "score"
    t.bigint "critic_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "movie_id", null: false
    t.index ["critic_id"], name: "index_reviews_on_critic_id"
    t.index ["movie_id"], name: "index_reviews_on_movie_id"
  end

  create_table "theaters", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cinemas", "movies"
  add_foreign_key "cinemas", "theaters"
  add_foreign_key "reviews", "critics"
  add_foreign_key "reviews", "movies"
end
