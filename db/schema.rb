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

ActiveRecord::Schema.define(:version => 20131203174015) do

  create_table "ata", :force => true do |t|
    t.string   "numero"
    t.date     "data"
    t.boolean  "ordinaria"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "arquivo_file_name"
    t.string   "arquivo_content_type"
    t.integer  "arquivo_file_size"
    t.datetime "arquivo_updated_at"
  end

  create_table "nota", :force => true do |t|
    t.string   "numero"
    t.date     "data"
    t.string   "empresa"
    t.float    "valor"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "arquivo_file_name"
    t.string   "arquivo_content_type"
    t.integer  "arquivo_file_size"
    t.datetime "arquivo_updated_at"
  end

  create_table "oficios", :force => true do |t|
    t.string   "numero"
    t.date     "data"
    t.string   "codigo"
    t.text     "observacao"
    t.boolean  "enviado"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "arquivo_file_name"
    t.string   "arquivo_content_type"
    t.integer  "arquivo_file_size"
    t.datetime "arquivo_updated_at"
  end

  create_table "portaria", :force => true do |t|
    t.string   "numero"
    t.date     "data"
    t.text     "observacao"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "arquivo_file_name"
    t.string   "arquivo_content_type"
    t.integer  "arquivo_file_size"
    t.datetime "arquivo_updated_at"
  end

end
