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

ActiveRecord::Schema.define(version: 2023_07_08_225529) do

  create_table "cultos", force: :cascade do |t|
    t.date "data"
    t.time "horario"
  end

  create_table "cultos_musicas", id: false, force: :cascade do |t|
    t.integer "culto_id", null: false
    t.integer "musica_id", null: false
    t.integer "ordem"
    t.index ["culto_id", "musica_id"], name: "index_cultos_musicas_on_culto_id_and_musica_id"
    t.index ["musica_id", "culto_id"], name: "index_cultos_musicas_on_musica_id_and_culto_id"
  end

  create_table "musicas", force: :cascade do |t|
    t.string "titulo"
    t.string "autor"
    t.text "letra"
    t.integer "ano"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.boolean "admin"
    t.boolean "membro"
  end

end
