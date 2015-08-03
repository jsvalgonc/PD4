class ChangeDateFormatInMyTable < ActiveRecord::Migration
  def up
    change_column :ingredients, :NDB_No, :text
  end

  def down
    change_column :ingredients, :NDB_No, :integer
  end
end

