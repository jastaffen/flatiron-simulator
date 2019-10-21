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
ActiveRecord::Schema.define(version: 2019_10_21_020757) do

  create_table "options", force: :cascade do |t|
    t.string "text"
    t.integer "from_scene_id"
    t.integer "to_scene_id"
  end

  create_table "scenes", force: :cascade do |t|
    t.string "story"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
  end

end
