class Ingredient < ActiveRecord::Base
  belongs_to :measurement_unit
  has_many :recipe_ingredients, :dependent => :destroy  
  #has_many :ingredients, through: :recipe_ingredients
  
  has_many :ingredients_nutrients,:dependent => :destroy  
  accepts_nested_attributes_for :ingredients_nutrients, :allow_destroy => true   
 
end

