class AddNdbNoToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :NDB_No, :integer
  end
end
