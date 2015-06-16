class CreateNutrients < ActiveRecord::Migration
  def change
    create_table :nutrients do |t|
      t.string :nutrno
      t.string :units
      t.string :tagname
      t.string :nutrdesc
      t.decimal :numdec
      t.decimal :srorder

      t.timestamps
    end
  end
end
