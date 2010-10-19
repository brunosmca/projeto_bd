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

ActiveRecord::Schema.define(:version => 20101019054103) do

  create_table "activities", :force => true do |t|
    t.string   "titulo"
    t.string   "descricao"
    t.datetime "data_inicial"
    t.datetime "date_prev_final"
    t.integer  "num_horas_gastas"
    t.string   "prioridade"
    t.string   "tipo"
    t.integer  "project_id"
    t.integer  "user_id"
  end

  create_table "projects", :force => true do |t|
    t.string   "nome"
    t.datetime "data_inicial"
    t.datetime "data_final"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "password"
    t.string   "nome"
    t.string   "sexo"
    t.datetime "data_nascimento"
    t.string   "endereco"
    t.string   "telefone"
    t.datetime "data_contratacao"
    t.integer  "salario"
    t.boolean  "administrador"
  end

end
