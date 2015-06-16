class IngredientsNutrient < ActiveRecord::Base
  belongs_to :ingredient
  belongs_to :nutrient
  
 def self.importUSDA(ingredient_id)
   #apaga todos os registo para esse ingrediente
   IngredientsNutrient.delete_all "ingredient_id = " + ingredient_id
   #vai a tabela de nutrientes buscar todos os activos
   @nutrients_array = Array.new
   Nutrient.where("activo <> 0" ).find_each do |row|
        @nutrients_array << row.nutrno
   end
   #vai buscar todos os nutrients da base dados USDA para este ingrediente
   nDB_NO=Ingredient.where("id=" + ingredient_id).first.NDB_No
   @nutrients=getUSDA(nDB_NO.to_s, @nutrients_array)
   byebug
   #itera por cada um dos nutrientes e insere na tabela
   @nutrients[:report][:foods][0][:nutrients].each do |row|
    ingnut = IngredientsNutrient.new
    ingnut.ingredient_id=ingredient_id
    ingnut.nutrient_id = row[:nutrient_id]
    ingnut.valor = row[:value]
    ingnut.save
   end
 end

 private  

 API_KEY= "VmfaYB4wKWl2Trd5BHMICgW5vDsq6O1rWyVdr4Ga"
 NDBNO = "01010"
 def self.getUSDA(nDBNO, nutrients_array)
    
    uri = "http://api.nal.usda.gov/usda/ndb/nutrients/"           #base url of the API
    uri = uri + "?format=json"                                    #define formato com json
    uri = uri + "&api_key=" + API_KEY                             #acrescenta a chave
    nutrients_array.each do |row|
        uri = uri + "&nutrients=" + row.to_s
    end 
    uri = uri + "&ndbno=" + nDBNO                                 #codigo do ingrediente
    rest_resource = RestClient::Resource.new(uri)                 # It will create new rest-client resource so that we can call different methods of it
    nutrients = rest_resource.get                                 # will get back you all the detail in json format, but it will we wraped as string, so we will parse it in the next step.
    #@nutrients = JSON.parse(nutrients, :symbolize_names => true)  # we will convert the return  data into array of hash.see json data parsing here
    return JSON.parse(nutrients, :symbolize_names => true)
    #@tipo=@nutrients[:report][:foods][0][:nutrients][0][:value]   #vai busca o número de calorias ao hash de resposta
 end
end
