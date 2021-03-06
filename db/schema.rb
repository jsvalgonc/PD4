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

ActiveRecord::Schema.define(version: 20150930085329) do

  create_table "ingredients", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "measurement_unit_id"
    t.text     "NDB_No"
    t.float    "weight"
  end

  create_table "ingredients_nutrients", force: true do |t|
    t.integer  "ingredient_id"
    t.integer  "nutrient_id"
    t.decimal  "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ingredients_nutrients", ["ingredient_id"], name: "index_ingredients_nutrients_on_ingredient_id"
  add_index "ingredients_nutrients", ["nutrient_id"], name: "index_ingredients_nutrients_on_nutrient_id"

  create_table "measurement_units", force: true do |t|
    t.string   "Unit"
    t.string   "Symbol"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "Unit_plural"
  end

  create_table "menus", force: true do |t|
    t.date     "day"
    t.text     "weekday"
    t.text     "meal"
    t.integer  "recipe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "menus", ["recipe_id"], name: "index_menus_on_recipe_id"

  create_table "nutrients", force: true do |t|
    t.string   "nutrno"
    t.string   "units"
    t.string   "tagname"
    t.string   "nutrdesc"
    t.decimal  "numdec"
    t.decimal  "srorder"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "activo"
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

  create_table "recipe_nutrients", force: true do |t|
    t.integer  "recipe_id"
    t.integer  "nutrient_id"
    t.integer  "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "recipe_nutrients", ["nutrient_id"], name: "index_recipe_nutrients_on_nutrient_id"
  add_index "recipe_nutrients", ["recipe_id"], name: "index_recipe_nutrients_on_recipe_id"

  create_table "recipe_procedures", force: true do |t|
    t.integer  "recipe_id"
    t.integer  "procedure_number"
    t.text     "title"
    t.text     "prodedure"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "procedure"
  end

  add_index "recipe_procedures", ["recipe_id"], name: "index_recipe_procedures_on_recipe_id"

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

  create_table "week_nutrients", force: true do |t|
    t.integer  "week_id"
    t.integer  "nutrient_id"
    t.string   "valor"
    t.string   "integer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weeks", force: true do |t|
    t.date     "first_day"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
