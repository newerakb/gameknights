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

ActiveRecord::Schema.define(version: 20131102030314) do

  create_table "game_mechanics", force: true do |t|
    t.integer  "game_id",     null: false
    t.integer  "mechanic_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "game_mechanics", ["game_id", "mechanic_id"], name: "index_game_mechanics_on_game_id_and_mechanic_id", unique: true, using: :btree
  add_index "game_mechanics", ["game_id"], name: "index_game_mechanics_on_game_id", using: :btree
  add_index "game_mechanics", ["mechanic_id"], name: "index_game_mechanics_on_mechanic_id", using: :btree

  create_table "games", force: true do |t|
    t.string   "name",        null: false
    t.integer  "bgg_id"
    t.integer  "min_players", null: false
    t.integer  "max_players", null: false
    t.integer  "length",      null: false
    t.string   "description"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "games", ["bgg_id"], name: "index_games_on_bgg_id", unique: true, using: :btree
  add_index "games", ["name"], name: "index_games_on_name", unique: true, using: :btree

  create_table "mechanics", force: true do |t|
    t.string   "name",        null: false
    t.integer  "bgg_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mechanics", ["bgg_id"], name: "index_mechanics_on_bgg_id", unique: true, using: :btree
  add_index "mechanics", ["name"], name: "index_mechanics_on_name", unique: true, using: :btree

  create_table "player_sessions", force: true do |t|
    t.integer  "player_id",  null: false
    t.integer  "session_id", null: false
    t.integer  "rank",       null: false
    t.decimal  "score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "player_sessions", ["player_id", "session_id"], name: "index_player_sessions_on_player_id_and_session_id", unique: true, using: :btree
  add_index "player_sessions", ["player_id"], name: "index_player_sessions_on_player_id", using: :btree
  add_index "player_sessions", ["rank"], name: "index_player_sessions_on_rank", using: :btree
  add_index "player_sessions", ["session_id"], name: "index_player_sessions_on_session_id", using: :btree

  create_table "players", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "team_id"
    t.string   "alias"
    t.boolean  "display_real_name", default: false
    t.boolean  "team_admin",        default: false
    t.boolean  "team_owner",        default: false
  end

  add_index "players", ["team_id"], name: "index_players_on_team_id", using: :btree
  add_index "players", ["user_id"], name: "index_players_on_user_id", using: :btree

  create_table "sessions", force: true do |t|
    t.integer  "game_id",    null: false
    t.integer  "team_id",    null: false
    t.date     "date",       null: false
    t.integer  "length"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["date"], name: "index_sessions_on_date", using: :btree
  add_index "sessions", ["game_id"], name: "index_sessions_on_game_id", using: :btree
  add_index "sessions", ["team_id"], name: "index_sessions_on_team_id", using: :btree

  create_table "team_games", force: true do |t|
    t.integer  "team_id"
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "team_games", ["game_id"], name: "index_team_games_on_game_id", using: :btree
  add_index "team_games", ["team_id", "game_id"], name: "index_team_games_on_team_id_and_game_id", unique: true, using: :btree
  add_index "team_games", ["team_id"], name: "index_team_games_on_team_id", using: :btree

  create_table "teams", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teams", ["name"], name: "index_teams_on_name", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "nickname",                        null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email",                           null: false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "site_admin",      default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["nickname"], name: "index_users_on_nickname", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
