class RemoveForceFromIngredients < ActiveRecord::Migration
  def change
    remove_column :ingredients, :Force, :varchar
  end
end
