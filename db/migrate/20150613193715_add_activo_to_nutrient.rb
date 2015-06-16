class AddActivoToNutrient < ActiveRecord::Migration
  def change
    add_column :nutrients, :activo, :binary
    add_column :nutrients, :–force, :string
  end
end
