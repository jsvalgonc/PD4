class CreateIngredientsNutrients < ActiveRecord::Migration
  def change
    create_table :ingredients_nutrients do |t|
      t.references :ingredient, index: true
      t.references :nutrient, index: true
      t.decimal :valor

      t.timestamps
    end
  end
end
