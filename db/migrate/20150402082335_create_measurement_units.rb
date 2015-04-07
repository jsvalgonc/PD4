class CreateMeasurementUnits < ActiveRecord::Migration
  def change
    create_table :measurement_units do |t|
      t.string :Unit
      t.string :Symbol

      t.timestamps
    end
  end
end
