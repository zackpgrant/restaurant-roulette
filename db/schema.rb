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

ActiveRecord::Schema[7.1].define(version: 2023_12_21_215335) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "franchise_tags", force: :cascade do |t|
    t.bigint "franchise_id", null: false
    t.bigint "tag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["franchise_id"], name: "index_franchise_tags_on_franchise_id"
    t.index ["tag_id"], name: "index_franchise_tags_on_tag_id"
  end

  create_table "franchises", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "address", null: false
    t.string "phone_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "hours", null: false
    t.bigint "franchise_id", null: false
    t.index ["franchise_id"], name: "index_restaurants_on_franchise_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  add_foreign_key "franchise_tags", "franchises"
  add_foreign_key "franchise_tags", "tags"
  add_foreign_key "restaurants", "franchises"
end
