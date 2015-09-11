class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.date :day
      t.text :weekday
      t.text :meal
      t.references :recipe, index: true

      t.timestamps
    end
  end
end
