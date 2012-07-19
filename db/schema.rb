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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120719212037) do

  create_table "games", :force => true do |t|
    t.integer  "players_id"
    t.integer  "rounds_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "games", ["players_id"], :name => "index_games_on_players_id"
  add_index "games", ["rounds_id"], :name => "index_games_on_rounds_id"

  create_table "games_players", :id => false, :force => true do |t|
    t.integer "game_id"
    t.integer "player_id"
  end

  create_table "games_rounds", :id => false, :force => true do |t|
    t.integer "game_id"
    t.integer "round_id"
  end

  create_table "nominations", :force => true do |t|
    t.integer  "leader_id"
    t.integer  "nominees_id"
    t.integer  "round_id"
    t.integer  "votes_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "nominations_players", :id => false, :force => true do |t|
    t.integer "nomination_id"
    t.integer "player_id"
  end

  create_table "nominations_votes", :id => false, :force => true do |t|
    t.integer "nomination_id"
    t.integer "vote_id"
  end

  create_table "players", :force => true do |t|
    t.string   "name",       :null => false
    t.boolean  "spy",        :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "session"
  end

  create_table "players_rounds", :id => false, :force => true do |t|
    t.integer "player_id"
    t.integer "round_id"
  end

  create_table "rounds", :force => true do |t|
    t.integer  "number"
    t.boolean  "pass"
    t.integer  "required"
    t.integer  "players_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "rounds", ["players_id"], :name => "index_rounds_on_players_id"

  create_table "votes", :force => true do |t|
    t.integer  "player_id",  :null => false
    t.boolean  "vote",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
