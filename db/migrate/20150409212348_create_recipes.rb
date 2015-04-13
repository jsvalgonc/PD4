class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :procedure
      t.decimal :preparationTime
      t.decimal :cookingTime
      t.decimal :serves

      t.timestamps
    end
  end
end
