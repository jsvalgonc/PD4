class Recipe < ActiveRecord::Base
   has_many :recipe_ingredients,:dependent => :destroy
   has_many :recipe_nutrients,:dependent => :destroy
   has_many :recipe_procedures,:dependent => :destroy
   has_many :ingredients,:through => :recipe_ingredients

   accepts_nested_attributes_for :recipe_ingredients, :allow_destroy => true   #accepts_nested_attributes_for :recipe_ingredients_attributes
   accepts_nested_attributes_for :recipe_procedures, :allow_destroy => true
   accepts_nested_attributes_for :recipe_nutrients, :allow_destroy => true
   accepts_nested_attributes_for :ingredients
   
   attr_accessor :calorias, :gorduraTotal, :gorduraSaturada, :sodio, :hidratosCarbono, :fibra, :acucar, :proteinas, :vitaminaA,:vitaminaC, :calcio, :percentages
   
   def calorias
      begin
         return self.recipe_nutrients.find_by(nutrient_id: 208).valor 
      rescue
         return 0
      end 
   end
   
   def gorduraTotal
      begin
         return self.recipe_nutrients.find_by(nutrient_id: 204).valor 
      rescue
         return 0
      end 
   end
   
   def gorduraSaturada
      begin
         return self.recipe_nutrients.find_by(nutrient_id: 606).valor 
      rescue
         return 0
      end 
   end
   
   def sodio
      begin
         return self.recipe_nutrients.find_by(nutrient_id: 307).valor 
      rescue
         return 0
      end 
   end
   
   def hidratosCarbono
      begin
         return self.recipe_nutrients.find_by(nutrient_id: 205).valor 
      rescue
         return 0
      end 
   end
   
   
   def fibra
      begin
         return self.recipe_nutrients.find_by(nutrient_id: 291).valor 
      rescue
         return 0
      end 
   end
   
   def acucar
      begin
         return self.recipe_nutrients.find_by(nutrient_id: 269).valor 
      rescue
         return 0
      end 
   end
   
   def proteinas
      begin
         return self.recipe_nutrients.find_by(nutrient_id: 203).valor 
      rescue
         return 0
      end 
   end
   
   def vitaminaA
      begin
         return self.recipe_nutrients.find_by(nutrient_id: 302).valor 
      rescue
         return 0
      end 
   end
   
   def vitaminaC
      begin
         return self.recipe_nutrients.find_by(nutrient_id: 401).valor 
      rescue
         return 0
      end 
   end
   
   def calcio
      begin
         return self.recipe_nutrients.find_by(nutrient_id: 301).valor 
      rescue
         return 0
      end 
   end
   
   def colestrol
      begin
         return self.recipe_nutrients.find_by(nutrient_id: 601).valor 
      rescue
         return 0
      end 
   end
   
   def percentages
      percentages = Hash.new
      percentages["calorias"]=self.calorias/2000
      percentages["gorduraTotal"]=self.gorduraTotal/65
      percentages["gorduraSaturada"]=self.gorduraSaturada/20
      percentages["colestrol"]=self.colestrol/300
      percentages["sodio"]=self.sodio/2400
      percentages["hidratosCarbono"]=self.hidratosCarbono/300
      percentages["fibra"]=self.fibra/25
      return percentages
   end
   
end
