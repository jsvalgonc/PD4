class MenusController < ApplicationController
  before_action :set_menu, only: [:show, :edit, :update, :destroy]

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
    #byebug
  end
  
  def updatemenuweek
    #cria uma hash (@menuweek_hash) com todos os menus da semana a partir da tabela
    #@teste = "teste"
    data = params[:id]
    data_inicio = data.to_date
    data_fim = data_inicio + 7.days
    @menuweek=Menu.where("day > ? AND day < ?", data_inicio, data_fim).take(49)
    @menuweek_hash= Hash[@menuweek.map {|menu| [[menu.day,menu.meal], menu.recipe_id]}]
    @teste=@menuweek
  end

  def showmenuweek
    #cria uma hash (@menuweek_hash) com todos os menus da semana a partir da tabela
    @teste = "teste"
    data = params[:id]
    data_inicio = data.to_date
    data_fim = data_inicio + 7.days
    @menuweek=Menu.where("day > ? AND day < ?", data_inicio, data_fim).take(49)
    @menuweek_hash= Hash[@menuweek.map {|menu| [[menu.day,menu.meal], menu.recipe_id]}]
  end
  
  #def menuweekpost
  #    respond_to do |format|
  #    if @teste.update(menu_params_week)
  #      format.html { redirect_to @teste, notice: 'Menu semanal actualizado com sucesso.' }
  #      format.json { head :no_content }
  #    else
  #      format.html { render action: 'Editado' }
  #      format.json { render json: @teste.errors, status: :unprocessable_entity }
  #    end
  #  end

#end
  
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu
      @menu = Menu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_params
      params.require(:menu).permit(:day, :weekday, :meal, :recipe_id, :id, :menu)
    end
    
    #def menu_params_week
    #  params.require(:teste)
    #end
end
