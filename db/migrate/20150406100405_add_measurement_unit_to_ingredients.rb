class AddMeasurementUnitToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :measurement_unit_id, :integer
    add_column :ingredients, :–force, :string
  end
end
