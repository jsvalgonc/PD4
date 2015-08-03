class AddProcedureToRecipeProcedures < ActiveRecord::Migration
  def change
    add_column :recipe_procedures, :procedure, :text
  end
end
