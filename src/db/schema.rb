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

ActiveRecord::Schema.define(version: 2021_11_10_013251) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "app_configs", force: :cascade do |t|
    t.string "name"
    t.string "logo_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.float "serving_size"
    t.float "calories"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "fat"
    t.float "cholesterol"
    t.float "sodium"
    t.float "carbs"
    t.float "sugar"
    t.float "protein"
    t.string "url"
  end

  create_table "recipe_items", force: :cascade do |t|
    t.integer "quantity"
    t.integer "food_id"
    t.integer "recipe_id"
    t.float "calories"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "fat"
    t.float "cholesterol"
    t.float "sodium"
    t.float "carbs"
    t.float "sugar"
    t.float "protein"
    t.float "url"
  end

  create_table "recipes", force: :cascade do |t|
    t.float "calTotal"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "fatTotal"
    t.float "cholTotal"
    t.float "sodiumTotal"
    t.float "carbsTotal"
    t.float "sugarTotal"
    t.float "proteinTotal"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
