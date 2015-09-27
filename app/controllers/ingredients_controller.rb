class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :edit, :update, :destroy, :ingredients_nutrients]
  #before_filter :get_measurement_unit

  # GET /ingredients
  # GET /ingredients.json
  def index
    @ingredients = Ingredient.all
    #@ingredients = @measurement_unit.ingredients
  end

  # GET /ingredients/1
  # GET /ingredients/1.json
  def show
    #@ingredients = @measurement_unit.ingredient.find(params[:id])
    #@ingredients = @measurement_unit.ingredient.find(id_params)
    #byebug
  end

  # GET /ingredients/new
  def new
    @ingredient = Ingredient.new
    #@measurement_unit = MeasurementUnit.find(params[:measurement_unit_id])
    #@ingredient = @measurement_unit.ingredients.build
    
  end

  # GET /ingredients/1/edit
  def edit

    @ingredient = Ingredient.find(params[:id])
    @ingredient.ingredients_nutrients.build
    #@ingredient = @measurement_unit.ingredients.find(params[:id])
    
    # was @award = Award.find(params[:id])
  end

  # POST /ingredients
  # POST /ingredients.json
  def create
    @ingredient = Ingredient.new(ingredient_params)
    #@ingredient = @measurement_unit.ingredients.build(params[:ingredient]) - versão anterior
    #@ingredient = @measurement_unit.ingredients.build(ingredient_params)
    respond_to do |format|
      if @ingredient.save
        #format.html { redirect_to @measurement_unit , notice: 'Ingredient was successfully created.' }
        format.html { redirect_to @ingredient, notice: 'Ingredient was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ingredient }
      else
        format.html { render action: 'new' }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end
  # PATCH/PUT /ingredients/1
  # PATCH/PUT /ingredients/1.json
  def update
     #@ingredient = @measurement_unit.ingredients.find(params[:id])
     byebug
    respond_to do |format|
      if @ingredient.update(ingredient_params)
        #format.html { redirect_to measurment_unit_ingredients_url(@measurement_unit), 'Ingredient was successfully updated.' }
        format.html { redirect_to @ingredient, notice: 'Ingredient was successfully updated.' }
        #format.html { redirect_to measurement_units_url }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredients/1
  # DELETE /ingredients/1.json
  def destroy
    #@ingredient = @measurement_unit.ingredients.find(params[:id])
    @ingredient.destroy
    respond_to do |format|
      format.html { redirect_to ingredients_url }
      format.json { head :no_content }
    end
  end
  
  def import_nutrients
    IngredientsNutrient.importUSDA(params[:ingredient_id])
    #IngredientsNutrient.import("1")
    redirect_to root_url, notice: "Nutrientes Importados"
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredient
      @ingredient = Ingredient.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    private
    def get_measurement_unit
      @measurement_unit =  MeasurementUnit.find(params[:measurement_unit_id])
    end
    
    def ingredient_params
#      params.require(:ingredient).permit(:measurement_unit_id, :description, :NDB_No, ingredients_nutrients_attributes[:id, :ingredient_id, :nutrient_id, :valor])
      params.require(:ingredient).permit(:measurement_unit_id, :description, :NDB_No, :weight)
    end
end
