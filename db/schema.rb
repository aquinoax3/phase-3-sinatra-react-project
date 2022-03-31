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

ActiveRecord::Schema.define(version: 2022_03_28_202059) do

  create_table "albums", force: :cascade do |t|
    t.integer "album_id"
    t.string "album_title"
    t.string "album_cover"
    t.string "album_artist"
  end

  create_table "toplists", force: :cascade do |t|
    t.integer "users_id"
    t.integer "albums_id"
    t.index ["albums_id"], name: "index_toplists_on_albums_id"
    t.index ["users_id"], name: "index_toplists_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "user_id"
    t.string "user_name"
    t.string "password"
  end

end
