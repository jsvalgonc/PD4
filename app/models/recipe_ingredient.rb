class RecipeIngredient < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :recipe
  has_many :ingredients_nutrients,:dependent => :destroy  
  accepts_nested_attributes_for :ingredients_nutrients, :allow_destroy => true
end
