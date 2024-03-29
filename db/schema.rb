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

ActiveRecord::Schema[7.0].define(version: 2023_11_10_034229) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "options", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_options_on_user_id", where: "(user_id IS NOT NULL)"
  end

  create_table "options_polls", id: :serial, force: :cascade do |t|
    t.bigint "poll_id", null: false
    t.bigint "option_id", null: false
    t.index ["option_id"], name: "index_options_polls_on_option_id"
    t.index ["poll_id"], name: "index_options_polls_on_poll_id"
  end

  create_table "polls", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title", null: false
    t.text "description"
    t.integer "user_id"
    t.string "password"
    t.boolean "requires_logged_in", default: false, null: false
    t.date "close_date"
    t.integer "max_selected_options"
    t.index ["user_id"], name: "index_polls_on_user_id", where: "(user_id IS NOT NULL)"
  end

  create_table "ranks", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "poll_option_id", null: false
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["poll_option_id"], name: "index_ranks_on_poll_option_id"
    t.index ["user_id"], name: "index_ranks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "options_polls", "options"
  add_foreign_key "options_polls", "polls"
  add_foreign_key "ranks", "options_polls", column: "poll_option_id"
  add_foreign_key "ranks", "users"
end
