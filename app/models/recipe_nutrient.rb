class RecipeNutrient < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :nutrient
end
