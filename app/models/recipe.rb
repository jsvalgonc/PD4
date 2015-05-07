class Recipe < ActiveRecord::Base
   has_many :recipe_ingredients
   accepts_nested_attributes_for :recipe_ingredients , :reject_if => lambda { |a| a[:content].blank? }
   #accepts_nested_attributes_for :recipe_ingredients_attributes
end

