class TesteController < ApplicationController
  require 'rest-client'
  API_KEY= "VmfaYB4wKWl2Trd5BHMICgW5vDsq6O1rWyVdr4Ga"
  NDBNO = "01010"
  def index
    uri = "http://api.nal.usda.gov/usda/ndb/nutrients/"           #base url of the API
    uri = uri + "?format=json"                                    #define formato com json
    uri = uri + "&api_key=" + API_KEY                             #acrescenta a chave
    uri = uri + "&nutrients=208"                                  #apenas as calorias
    uri = uri + "&ndbno=" + NDBNO                                 #codigo do ingrediente
    rest_resource = RestClient::Resource.new(uri)                 # It will create new rest-client resource so that we can call different methods of it
    nutrients = rest_resource.get                                 # will get back you all the detail in json format, but it will we wraped as string, so we will parse it in the next step.
    @nutrients = JSON.parse(nutrients, :symbolize_names => true)  # we will convert the return  data into array of hash.see json data parsing here
    @tipo=@nutrients[:report][:foods][0][:nutrients][0][:value]   #vai busca o número de calorias ao hash de resposta
  end
end
