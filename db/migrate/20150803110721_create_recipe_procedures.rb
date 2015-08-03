class CreateRecipeProcedures < ActiveRecord::Migration
  def change
    create_table :recipe_procedures do |t|
      t.references :recipe, index: true
      t.integer :procedure_number
      t.text :title
      t.text :prodedure

      t.timestamps
    end
  end
end
