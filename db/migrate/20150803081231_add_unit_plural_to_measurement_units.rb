class AddUnitPluralToMeasurementUnits < ActiveRecord::Migration
  def change
    add_column :measurement_units, :Unit_plural, :text
  end
end
