class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.references :measurment_unit, index: true
      t.string :description

      t.timestamps
    end
  end
end
