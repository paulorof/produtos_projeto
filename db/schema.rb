# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101122215351) do

  create_table "banners", :force => true do |t|
    t.string   "nome"
    t.integer  "tipo_banner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorias", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.string   "foto_file_name"
    t.string   "string"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.integer  "integer"
    t.datetime "foto_updated_at"
    t.datetime "datetime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorias_produtos", :id => false, :force => true do |t|
    t.integer "categoria_id"
    t.integer "produto_id"
  end

  create_table "mapas", :force => true do |t|
    t.string   "nome"
    t.string   "longitude"
    t.string   "latitude"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "endereco"
  end

  create_table "marcas", :force => true do |t|
    t.string   "nome"
    t.string   "link"
    t.string   "foto_file_name"
    t.string   "string"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.integer  "integer"
    t.datetime "foto_updated_at"
    t.datetime "datetime"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "banner_id"
  end

  create_table "produtos", :force => true do |t|
    t.string   "nome"
    t.text     "descricacao"
    t.integer  "marca_id"
    t.string   "foto_file_name"
    t.string   "string"
    t.string   "foto_content_type"
    t.integer  "foto_file_size"
    t.integer  "integer"
    t.datetime "foto_updated_at"
    t.datetime "datetime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipo_banners", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
  end

  add_index "usuarios", ["login"], :name => "index_usuarios_on_login", :unique => true

end
