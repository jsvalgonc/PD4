class CreateRecipeNutrients < ActiveRecord::Migration
  def change
    create_table :recipe_nutrients do |t|
      t.references :recipe, index: true
      t.references :nutrient, index: true
      t.integer :valor

      t.timestamps
    end
  end
end
