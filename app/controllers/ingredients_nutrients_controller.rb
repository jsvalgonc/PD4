class IngredientsNutrientsController < ApplicationController
  before_action :set_ingredients_nutrient, only: [:show, :edit, :update, :destroy]

  # GET /ingredients_nutrients
  # GET /ingredients_nutrients.json
  def index
    @ingredients_nutrients = IngredientsNutrient.all
  end

  # GET /ingredients_nutrients/1
  # GET /ingredients_nutrients/1.json
  def show
  end

  # GET /ingredients_nutrients/new
  def new
    @ingredients_nutrient = IngredientsNutrient.new
  end

  # GET /ingredients_nutrients/1/edit
  def edit
  end

  # POST /ingredients_nutrients
  # POST /ingredients_nutrients.json
  def create
    @ingredients_nutrient = IngredientsNutrient.new(ingredients_nutrient_params)

    respond_to do |format|
      if @ingredients_nutrient.save
        format.html { redirect_to @ingredients_nutrient, notice: 'Ingredients nutrient was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ingredients_nutrient }
      else
        format.html { render action: 'new' }
        format.json { render json: @ingredients_nutrient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingredients_nutrients/1
  # PATCH/PUT /ingredients_nutrients/1.json
  def update
    respond_to do |format|
      if @ingredients_nutrient.update(ingredients_nutrient_params)
        format.html { redirect_to @ingredients_nutrient, notice: 'Ingredients nutrient was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ingredients_nutrient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredients_nutrients/1
  # DELETE /ingredients_nutrients/1.json
  def destroy
    @ingredients_nutrient.destroy
    respond_to do |format|
      format.html { redirect_to ingredients_nutrients_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingredients_nutrient
      @ingredients_nutrient = IngredientsNutrient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingredients_nutrient_params
      params.require(:ingredients_nutrient).permit(:ingredient_id, :nutrient_id, :valor)
    end
end
