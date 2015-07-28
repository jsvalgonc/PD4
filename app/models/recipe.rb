class Recipe < ActiveRecord::Base
   has_many :recipe_ingredients,:dependent => :destroy
   has_many :recipe_nutrients,:dependent => :destroy  
   accepts_nested_attributes_for :recipe_ingredients, :allow_destroy => true   #accepts_nested_attributes_for :recipe_ingredients_attributes
   accepts_nested_attributes_for :recipe_nutrients, :allow_destroy => true
end

