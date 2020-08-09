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

ActiveRecord::Schema.define(version: 20180817045630) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "datasets", force: :cascade do |t|
    t.integer "figshare_id"
    t.string "title"
    t.string "doi"
    t.string "url_api"
    t.string "url_public"
    t.string "thumbnail"
    t.integer "defined_type"
    t.datetime "published_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experiments", force: :cascade do |t|
    t.float "set_temperature"
    t.float "set_field"
    t.float "set_angle"
    t.bigint "dataset_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dataset_id"], name: "index_experiments_on_dataset_id"
  end

  create_table "rows", force: :cascade do |t|
    t.float "temperature"
    t.float "field"
    t.float "angle"
    t.float "icw"
    t.float "ic"
    t.float "n"
    t.float "v0"
    t.float "v1"
    t.float "hall_field"
    t.float "hall_angle"
    t.float "set_temperature"
    t.float "set_field"
    t.float "set_angle"
    t.bigint "experiment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["experiment_id"], name: "index_rows_on_experiment_id"
  end

  add_foreign_key "experiments", "datasets"
  add_foreign_key "rows", "experiments"
end
