class FormationsController < ApplicationController
  before_action :set_formation, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  after_filter "link_back", only: [:new]

  # GET /formations
  # GET /formations.json
  def index
    if current_user
      @formations = Formation.where(cpf_candidato: @current_user.cpf)
    end
  end

  # GET /formations/1
  # GET /formations/1.json
  def show
  end

  # GET /formations/new
  def new
    @formation = Formation.new
    link_back
  end

  # GET /formations/1/edit
  def edit
    if current_user
      findQuery = Formation.where(cpf_candidato: @current_user.cpf)
      id = findQuery.ids
      @formation = Formation.find_by_id(id)
    end
  end

  # POST /formations
  # POST /formations.json
  def create
    if current_user
      @formation = Formation.new(formation_params)

      respond_to do |format|
        if @formation.save
          format.html { redirect_to "/experiences/new"}
        else
          format.html { render :new }
        end
      end
    else
      render "candidatos/menu/mainMenu"
    end
  end

  # PATCH/PUT /formations/1
  # PATCH/PUT /formations/1.json
  def update
    @formation = Formation.find(params[:id])
    respond_to do |format|
      if @formation.update(formation_params)
        format.html { redirect_to @formation, notice: 'Formation was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /formations/1
  # DELETE /formations/1.json
  def destroy
    @formation = Formation.find(params[:id])
    @formation.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Formation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def link_back
    back_id = Candidato.where(cpf: current_user.cpf)
    @id_back = back_id.ids
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formation
      @formation = Formation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formation_params
      params.require(:formation).permit(:tipo, :curso, :instituicao, :data_inicio, :data_final, :cpf_candidato)
    end
end
