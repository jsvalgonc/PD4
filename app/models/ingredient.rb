class Ingredient < ActiveRecord::Base
  belongs_to :measurment_unit
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients 
  #attr_accessible :measurment_unit_id
end

#def person_params
  #params.require(:person).permit(:name, :age)
 # params.require(:person).permit(:name, :age)
#end
