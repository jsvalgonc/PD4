class AddWeightToIngredients < ActiveRecord::Migration
  def change
    add_column :ingredients, :weight, :float
  end
end
