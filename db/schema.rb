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

ActiveRecord::Schema.define(version: 2019_08_07_035741) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.integer "black_player_id"
    t.integer "white_player_id"
    t.integer "losing_player_id"
    t.integer "turn_player_id"
    t.boolean "draw"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.integer "user_id"
    t.index ["black_player_id"], name: "index_games_on_black_player_id"
    t.index ["losing_player_id"], name: "index_games_on_losing_player_id"
    t.index ["turn_player_id"], name: "index_games_on_turn_player_id"
    t.index ["user_id"], name: "index_games_on_user_id"
    t.index ["white_player_id"], name: "index_games_on_white_player_id"
  end

  create_table "matches", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pawns", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pieces", force: :cascade do |t|
    t.string "piece_type"
    t.string "color"
    t.string "image"
    t.integer "x_location"
    t.integer "y_location"
    t.integer "game_id"
    t.integer "player_id"
    t.boolean "taken_piece"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_pieces_on_game_id"
    t.index ["piece_type"], name: "index_pieces_on_piece_type"
    t.index ["player_id"], name: "index_pieces_on_player_id"
    t.index ["x_location"], name: "index_pieces_on_x_location"
    t.index ["y_location"], name: "index_pieces_on_y_location"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["provider"], name: "index_users_on_provider"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid"], name: "index_users_on_uid"
  end

end
