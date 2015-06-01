class Recipe < ActiveRecord::Base
   has_many :recipe_ingredients,:dependent => :destroy  
   #accepts_nested_attributes_for :recipe_ingredients, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
   accepts_nested_attributes_for :recipe_ingredients, :allow_destroy => true
   #accepts_nested_attributes_for :recipe_ingredients_attributes
end

