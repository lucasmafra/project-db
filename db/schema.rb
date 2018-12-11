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

ActiveRecord::Schema.define(version: 2018_12_10_230238) do

  create_table "atividades", force: :cascade do |t|
    t.datetime "data_inicio", null: false
    t.datetime "data_termino", null: false
    t.string "descricao"
    t.integer "local_id"
    t.string "titulo", null: false
    t.integer "total_vagas", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["local_id"], name: "index_atividades_on_local_id"
  end

  create_table "blazer_audits", force: :cascade do |t|
    t.integer "user_id"
    t.integer "query_id"
    t.text "statement"
    t.string "data_source"
    t.datetime "created_at"
    t.index ["query_id"], name: "index_blazer_audits_on_query_id"
    t.index ["user_id"], name: "index_blazer_audits_on_user_id"
  end

  create_table "blazer_checks", force: :cascade do |t|
    t.integer "creator_id"
    t.integer "query_id"
    t.string "state"
    t.string "schedule"
    t.text "emails"
    t.string "check_type"
    t.text "message"
    t.datetime "last_run_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_blazer_checks_on_creator_id"
    t.index ["query_id"], name: "index_blazer_checks_on_query_id"
  end

  create_table "blazer_dashboard_queries", force: :cascade do |t|
    t.integer "dashboard_id"
    t.integer "query_id"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dashboard_id"], name: "index_blazer_dashboard_queries_on_dashboard_id"
    t.index ["query_id"], name: "index_blazer_dashboard_queries_on_query_id"
  end

  create_table "blazer_dashboards", force: :cascade do |t|
    t.integer "creator_id"
    t.text "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_blazer_dashboards_on_creator_id"
  end

  create_table "blazer_queries", force: :cascade do |t|
    t.integer "creator_id"
    t.string "name"
    t.text "description"
    t.text "statement"
    t.string "data_source"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_blazer_queries_on_creator_id"
  end

  create_table "inscricaos", force: :cascade do |t|
    t.integer "atividade_id"
    t.integer "participante_id"
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["atividade_id"], name: "index_inscricaos_on_atividade_id"
    t.index ["participante_id"], name: "index_inscricaos_on_participante_id"
  end

  create_table "locals", force: :cascade do |t|
    t.string "endereco"
    t.integer "lotacao", null: false
    t.string "nome", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ministras", force: :cascade do |t|
    t.integer "atividade_id"
    t.integer "palestrante_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["atividade_id"], name: "index_ministras_on_atividade_id"
    t.index ["palestrante_id"], name: "index_ministras_on_palestrante_id"
  end

  create_table "palestrantes", force: :cascade do |t|
    t.string "bio"
    t.string "cpf", null: false
    t.string "email", null: false
    t.string "nome", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participantes", force: :cascade do |t|
    t.string "cpf", null: false
    t.string "email", null: false
    t.string "nome", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
