# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160111155509) do

  create_table "cheats", force: :cascade do |t|
    t.string  "title"
    t.text    "content"
    t.integer "cheat_id_id"
    t.integer "game_id_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.string "console"
  end

  create_table "users", force: :cascade do |t|
    t.string  "username"
    t.integer "user_id_id"
    t.string  "email"
    t.string  "password"
    t.string  "password_confirmation"
  end

end
