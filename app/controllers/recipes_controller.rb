class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy,:recipe_ingredients, :recipe_nutrients ]

  # GET /recipes
  # GET /recipes.json
  def index
    @recipes = Recipe.all
  end

  # GET /recipes/1
  # GET /recipes/1.json
  def show
  end

  # GET /recipes/new
  def new
    @recipe = Recipe.new
    3.times {@recipe.recipe_ingredients.build}
  end

  # GET /recipes/1/edit
  def edit
    @recipe = Recipe.find(params[:id])
    @recipe.recipe_ingredients.build
  end
  
  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new(recipe_params)

    
    respond_to do |format|
      if @recipe.save
        format.html { redirect_to @recipe, notice: 'Recipe was successfully created.' }
        format.json { render action: 'show', status: :created, location: @recipe }
      else
        format.html { render action: 'new' }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipes/1
  # PATCH/PUT /recipes/1.json
  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        calculate_nutrients 
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipes/1
  # DELETE /recipes/1.json
  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url }
      format.json { head :no_content }
    end
  end
  

  

    
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:id, :title, :procedure, :preparationTime, :cookingTime, :serves,
        recipe_ingredients_attributes: [:id,:recipe_id, :ingredient_id, :amout, :_destroy ,measurement_units_attributes: [:id, :unit]],
        recipe_nutrients_attributes: [:id,:recipe_id,:nutrient_id,:valor] )
    end
    
    def calculate_nutrients
      #Apaga os nutrientes anteriores desta receita
      # > insert into recipe_nutrients (recipe_id,nutrient_id,valor) VALUES (3,3,3); 
      RecipeNutrient.where(recipe_id: params[:id]).find_each do |recipe_nutrients|
        recipe_nutrients.destroy
      end
      #percorre os ingredientes da receita 
      set_recipe
      #cria uma array para os nutrientes 
      h=Hash.new(0)
      @recipe.recipe_ingredients.each do |recipe_ingredient|
          #para cada ingrediente vai buscar os nutrientes
        recipe_ingredient.ingredient.ingredients_nutrients.map do |recipe_ingredient_nutrient|
          #calcula a porção de cada ingrediente 
          amout_nutrient = recipe_ingredient.amout * recipe_ingredient_nutrient.valor
          #Se o nutriente já existe na array, acrescenta, se não cria
          if h.has_key?(recipe_ingredient_nutrient.nutrient_id) then
            h[recipe_ingredient_nutrient.nutrient_id] = amout_nutrient
            #cria registo
          else
            byebug
             h[recipe_ingredient_nutrient.nutrient_id] = h[recipe_ingredient_nutrient.nutrient_id]+amout_nutrient
             #soma 
          end
        end
      end
      
      #insere os nutrientes na tabela
      h.each do |nutrient_id, amout_nutrient|
        rec_nut=RecipeNutrient.new
        rec_nut.recipe_id = params[:id]
        rec_nut.nutrient_id=nutrient_id
        rec_nut.valor=amout_nutrient
        rec_nut.save
      end
    
    end

end
