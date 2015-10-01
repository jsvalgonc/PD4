class CreateWeekNutrients < ActiveRecord::Migration
  def change
    create_table :week_nutrients do |t|
      t.integer :week_id
      t.integer :nutrient_id
      t.string :valor
      t.string :integer

      t.timestamps
    end
  end
end
