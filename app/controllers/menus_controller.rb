class MenusController < ApplicationController
  before_action :set_menu,:set_week , only: [:show, :edit, :update, :destroy]

  # GET /menus
  # GET /menus.json
  def index
    @menus = Menu.all
  end

  # GET /menus/1
  # GET /menus/1.json
  def show
  end

  # GET /menus/new
  def new
    @menu = Menu.new
  end

  # GET /menus/1/edit
  def edit
  end
  
  def menuweek
    @teste = "teste"
  end
  
  def updatemenuweek
    #cria uma hash (@menuweek_hash) com todos os menus da semana a partir da tabela
    data = params[:id]
    data_inicio = data.to_date
    data_fim = data_inicio + 7.days
    @menuweek=Menu.where("day >= ? AND day <= ?", data_inicio, data_fim).take(49)
    @menuweek_hash= Hash[@menuweek.map {|menu| [[menu.day,menu.meal], menu.recipe_id]}]
    @teste=@menuweek
    set_week
  end

  def showmenuweek
    #cria uma hash (@menuweek_hash) com todos os menus da semana a partir da tabela
    @teste = "teste"
    set_menu
    set_week
    @menuweek=Menu.where("day > ? AND day < ?", data_inicio, data_fim).take(49)
    @menuweek_hash= Hash[@menuweek.map {|menu| [[menu.day,menu.meal], menu.recipe_id]}]
  end
  
  def menuweekpost
    #percorre as celulas do menu e actualiza a tabela
    data_param = params[:id]
    data = data_param.to_date
    i=0
    j=0
    while i<= 6 do
      while j<= 6 do
        menu_form=params["optionrecipe_" + j.to_s  + "_" + i.to_s]
        @menu_table = Menu.where(day: data,meal: j.to_s ).first
        if @menu_table 
          @menu_table.recipe_id = menu_form
          @menu_table.save 
        else
          if menu_form != "" then 
            @menu_table=Menu.new
            @menu_table.day = data
            @menu_table.meal= j.to_s
            @menu_table.weekday=i.to_s
            @menu_table.recipe_id = menu_form
            @menu_table.save
          end
        end
        j=j+1
      end
      j=0  
      i=i+1 
      data= data + 1.days
    end
    actualiza_nutrients_week
    respond_to do |format|
      format.html { redirect_to menus_url }
      format.json { head :no_content }
    end
  end
  
  # POST /menus
  # POST /menus.json
  def create
    @menu = Menu.new(menu_params)
    respond_to do |format|
      format.html { redirect_to @menu, notice: 'Menu was successfully created.' }
      format.json { render action: 'show', status: :created, location: @menu }
    end
  end

  # PATCH/PUT /menus/1
  # PATCH/PUT /menus/1.json
  def update
    respond_to do |format|
      if @menu.update(menu_params)
        format.html { redirect_to @menu, notice: 'Menu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menus/1
  # DELETE /menus/1.json
  def destroy
    @menu.destroy
    respond_to do |format|
      format.html { redirect_to menus_url }
      format.json { head :no_content }
    end
  end
  
  def actualiza_nutrients_week
    #apaga todos os registo referente a esta semana na tabela dos nutrientes da semana
    WeekNutrients.where(week_id: params[:id]).find_each do |week_nutrients|
        week_nutrients.destroy
    end
    #vai buscar todos os nutrientes para cada uma das receitas e soma
    set_menu_week
    h=Hash.new(0)
    @menuweek.each do |menu|
      recipe = Recipe.find(menu.recipe_id)
      recipe.recipe_nutrients.each do |recipe_nutrient|
        #para cada ingrediente vai buscar os nutrientes
        #Se o nutriente já existe na array, acrescenta, se não cria
          if h.has_key?(recipe_nutrient.nutrient_id) then
            h[recipe_nutrient.nutrient_id] = h[recipe_nutrient.nutrient_id]+recipe_nutrient.valor
            #cria registo
          else
            h[recipe_nutrient.nutrient_id] = h[recipe_nutrient.nutrient_id]+recipe_nutrient.valor
          end
      end
    end
  #insere os nutrientes da semana na tabela
  
  h.each do |nutrient_id, amout_nutrient|
    rec_nut=WeekNutrients.new
    rec_nut.week_id = params[:id]
    rec_nut.nutrient_id=nutrient_id
    rec_nut.valor=amout_nutrient 
    rec_nut.save
  end

  end
    
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu
      @menu = Menu.find(params[:id])
    end
    
    def set_week
      @week = Week.find_by( first_day: params[:id])
      byebug
    end
    
    def set_menu_week
      data = params[:id]
      data_inicio = data.to_date
      data_fim = data_inicio + 7.days
      @menuweek=Menu.where("day > ? AND day < ?", data_inicio, data_fim).take(49)
      set_week
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_params
      params.require(:menu).permit(:day, :weekday, :meal, :recipe_id, :id, :menu, :teste,
              week_nutrients_attributes: [:id,:recipe_id,:nutrient_id,:valor])

    end
    
    #def menu_params_week
    #  params.require(:teste)
    #end
end
