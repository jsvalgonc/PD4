class RecipeIngredient < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :recipe
  has_many :ingredients_nutrients
  accepts_nested_attributes_for :ingredients_nutrients
  # 29/07/2015 - retirei o comentado e apagei o destroy
end
