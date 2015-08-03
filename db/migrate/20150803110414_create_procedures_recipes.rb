class CreateProceduresRecipes < ActiveRecord::Migration
  def change
    create_table :procedures_recipes do |t|
      t.references :recipe, index: true
      t.integer :procedure_number
      t.text :title
      t.text :prodedure

      t.timestamps
    end
  end
end
