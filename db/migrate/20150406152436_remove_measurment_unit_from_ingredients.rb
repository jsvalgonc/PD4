class RemoveMeasurmentUnitFromIngredients < ActiveRecord::Migration
  def change
    remove_column :ingredients, :MeasurmentUnitID, :integer
  end
end
