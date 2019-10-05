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

ActiveRecord::Schema.define(version: 20191005161059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "candidatos", force: :cascade do |t|
    t.string   "cpf"
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date     "data_nasc"
    t.string   "cep"
    t.string   "logradouro"
    t.string   "numero"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "uf"
    t.integer  "user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string   "nome"
    t.string   "instituicao"
    t.string   "cargo"
    t.date     "inicio"
    t.date     "final"
    t.string   "cpf_candidato"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "experiences", force: :cascade do |t|
    t.string   "empresa"
    t.string   "cargo"
    t.date     "admissao"
    t.date     "saida"
    t.string   "cpf_candidato"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "formations", force: :cascade do |t|
    t.string   "tipo"
    t.string   "curso"
    t.string   "instituicao"
    t.date     "data_inicio"
    t.date     "data_final"
    t.string   "cpf_candidato"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "cpf"
    t.string   "tipoUser"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
