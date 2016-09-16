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

ActiveRecord::Schema.define(version: 20160916144253) do

  create_table "heros", force: :cascade do |t|
    t.string   "name"
    t.string   "sex"
    t.string   "height"
    t.integer  "age"
    t.string   "hometown"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "heros_powers", id: false, force: :cascade do |t|
    t.integer "hero_id",  null: false
    t.integer "power_id", null: false
    t.index ["hero_id", "power_id"], name: "index_heros_powers_on_hero_id_and_power_id"
    t.index ["power_id", "hero_id"], name: "index_heros_powers_on_power_id_and_hero_id"
  end

  create_table "powers", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "level"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
