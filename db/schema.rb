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

ActiveRecord::Schema.define(version: 20150526002649) do

  create_table "agendas", force: :cascade do |t|
    t.integer  "medico_id",    limit: 4
    t.date     "data_emissao"
    t.integer  "quantidade",   limit: 4
    t.integer  "saldo",        limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "clinica_id",   limit: 4
  end

  create_table "clinicas", force: :cascade do |t|
    t.integer  "medico_id",       limit: 4
    t.string   "nome",            limit: 45
    t.string   "telefone",        limit: 11
    t.string   "endereco",        limit: 60
    t.string   "end_numero",      limit: 6
    t.string   "end_complemento", limit: 15
    t.string   "bairro",          limit: 45
    t.string   "cidade",          limit: 45
    t.string   "uf",              limit: 2
    t.string   "cep",             limit: 8
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

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

  create_table "instituicoes", force: :cascade do |t|
    t.string   "nome",        limit: 60
    t.string   "cnpj",        limit: 14
    t.string   "responsavel", limit: 60
    t.string   "endereco",    limit: 60
    t.string   "end_numero",  limit: 6
    t.string   "complemento", limit: 15
    t.string   "bairro",      limit: 45
    t.integer  "cidade",      limit: 4
    t.string   "uf",          limit: 2
    t.string   "cep",         limit: 8
    t.string   "telefone",    limit: 11
    t.string   "status",      limit: 1
    t.integer  "usuario_id",  limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "medicos", force: :cascade do |t|
    t.string   "nome",             limit: 60
    t.string   "cpf",              limit: 11
    t.string   "crm",              limit: 10
    t.string   "crm_uf",           limit: 2
    t.string   "telefone",         limit: 11
    t.integer  "especialidade_id", limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "usuario_id",       limit: 4
  end

  add_index "medicos", ["usuario_id"], name: "index_medicos_on_usuario_id", unique: true, using: :btree

  create_table "municipios", force: :cascade do |t|
    t.string   "cod_ibge",   limit: 5
    t.string   "nome",       limit: 35
    t.string   "uf",         limit: 2
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",         limit: 60
    t.string   "tipo",          limit: 1
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "password_hash", limit: 255
    t.string   "password_salt", limit: 255
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree

end
