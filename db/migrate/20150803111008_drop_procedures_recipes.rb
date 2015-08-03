class DropProceduresRecipes < ActiveRecord::Migration
  def up
    drop_table :procedures_recipes
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
