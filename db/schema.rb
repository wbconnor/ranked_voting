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

ActiveRecord::Schema[7.0].define(version: 2023_04_21_005517) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "options", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "options_polls", id: false, force: :cascade do |t|
    t.bigint "option_id"
    t.bigint "poll_id"
    t.string "name"
    t.index ["option_id", "poll_id"], name: "index_options_polls_on_option_id_and_poll_id", unique: true
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
  end

end
