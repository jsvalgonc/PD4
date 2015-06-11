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

ActiveRecord::Schema.define(version: 20150412161358) do

  create_table "ingredients", force: true do |t|
    t.string   "description",         limit: nil
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "measurement_unit_id"
  end

  create_table "measurement_units", force: true do |t|
    t.string   "Unit"
    t.string   "Symbol"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "receita", force: true do |t|
    t.string   "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipe_ingredients", force: true do |t|
    t.text     "content"
    t.integer  "ingredient_id"
    t.integer  "recipe_id"
    t.decimal  "amout"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "recipe_ingredients", ["ingredient_id"], name: "index_recipe_ingredients_on_ingredient_id"
  add_index "recipe_ingredients", ["recipe_id"], name: "index_recipe_ingredients_on_recipe_id"

  create_table "recipes", force: true do |t|
    t.string   "title"
    t.text     "procedure"
    t.decimal  "preparationTime"
    t.decimal  "cookingTime"
    t.decimal  "serves"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unidade_medidas", force: true do |t|
    t.string   "unidade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
