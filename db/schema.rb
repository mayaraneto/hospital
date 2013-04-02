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

ActiveRecord::Schema.define(:version => 20130402133905) do

  create_table "atendimentos", :force => true do |t|
    t.string   "data"
    t.string   "hora"
    t.integer  "medico_id"
    t.integer  "paciente_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "atendimentos", ["medico_id"], :name => "index_atendimentos_on_medico_id"
  add_index "atendimentos", ["paciente_id"], :name => "index_atendimentos_on_paciente_id"

  create_table "consulta", :force => true do |t|
    t.string   "data"
    t.string   "hora"
    t.integer  "medico_id"
    t.integer  "paciente_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "consulta", ["medico_id"], :name => "index_consulta_on_medico_id"
  add_index "consulta", ["paciente_id"], :name => "index_consulta_on_paciente_id"

  create_table "especialidades", :force => true do |t|
    t.string   "tipo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "medicos", :force => true do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "endereco"
    t.string   "telefone"
    t.string   "crm"
    t.integer  "especialidade_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "medicos", ["especialidade_id"], :name => "index_medicos_on_especialidade_id"

  create_table "pacientes", :force => true do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "endereco"
    t.string   "telefone"
    t.string   "dataNascimento"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
