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

ActiveRecord::Schema.define(version: 20150513022049) do

  create_table "creditos", force: :cascade do |t|
    t.integer  "medico_id",    limit: 4
    t.date     "data_emissao"
    t.integer  "credito",      limit: 4
    t.integer  "saldo",        limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "especialidades", force: :cascade do |t|
    t.string   "descricao",  limit: 45
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "estados", force: :cascade do |t|
    t.string   "uf",         limit: 2
    t.string   "nome",       limit: 25
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "medicos", force: :cascade do |t|
    t.string   "nome",             limit: 60
    t.string   "cpf",              limit: 11
    t.string   "crm",              limit: 10
    t.string   "crm_uf",           limit: 2
    t.string   "email",            limit: 60
    t.string   "telefone",         limit: 11
    t.integer  "especialidade_id", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
