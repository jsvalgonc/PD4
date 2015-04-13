class CreateRecipeIngredients < ActiveRecord::Migration
  def change
    create_table :recipe_ingredients do |t|
      t.text :content
      t.references :ingredient, index: true
      t.references :recipe, index: true
      t.decimal :amout

      t.timestamps
    end
  end
end
