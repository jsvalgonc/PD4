class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy,:recipe_ingredients ]

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
    @recipe.recipe_ingredients.build
    #recipe_ingredients = @recipe.recipe_ingredients.build
    #@recipe.recipe_ingredients.build
    #raise @recipe.recipe_ingredients.to_yaml
  end

  # GET /recipes/1/edit
  def edit
    @recipe = Recipe.find(params[:id])
    @recipe.recipe_ingredients.build
    #@recipe.recipe_ingredients.build
  end

  # POST /recipes
  # POST /recipes.json
  def create
    @recipe = Recipe.new(recipe_params)
    #recipe_params[:recipe_ingredients_attributes.each do |recipe_ingredients|
    #@recipe.recipe_ingredients.build(:recipe_ingredients => recipe_ingredients)
    #end
    #@recipe.recipe_ingredients.build
    
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
  
    #def recipe_ingredients
    #  @ingredients = Ingrediente.all
    #  @recipe = Recipe.find(params[:id])
    #  @recipe.recipe_ingredients.build
    #  @recipe_ingredients = @recipe.recipe_ingredients
    #end
    
    #def recipe_ingredients
    #  @recipe = Recipe.find(params[:id])
    #  @ingredients = Ingredient.all
      #@recipe_ingredients = @recipe.ingredient_recipes
    #  @recipe_ingredients = @recipe.recipe_ingredients
      #respond_to do |format|
      #    format.html  { render text: @recipe.title  }
      #end
    #end
    
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
      #@recipe = Recipe.find(1)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipe_params
      params.require(:recipe).permit(:id, :title, :procedure, :preparationTime, :cookingTime, :serves,
        recipe_ingredients_attributes: [:id,:recipe_id, :ingredient_id, :amout]
        #recipe_ingredients => [:recipe_id, :ingredient_id, :amout]
      )
    end

end
