class RemoveForceFromIngredient < ActiveRecord::Migration
  def change
    remove_column :ingredients, :–force, :string
  end
end
