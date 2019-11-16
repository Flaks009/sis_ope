class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /experiences
  # GET /experiences.json
  def index
    if current_user
      @experiences = Experience.where(cpf_candidato: @current_user.cpf)
    end
  end

  # GET /experiences/1
  # GET /experiences/1.json
  def show
  end

  # GET /experiences/new
  def new
    @experience = Experience.new
    link_back
  end

  # GET /experiences/1/edit
  def edit
    if current_user
      findQuery = Experience.where(cpf_candidato: @current_user.cpf)
      id = findQuery.ids
      @experience = Experience.find_by_id(id)
    end
  end

  # POST /experiences
  # POST /experiences.json
  def create
    if current_user
      @experience = Experience.new(experience_params)

      respond_to do |format|
        if @experience.save
          format.html { redirect_to "/courses/new" }
        else
          format.html { render :new }
        end
      end
    else
      render "candidatos/menu/mainMenu"
    end
  end

  # PATCH/PUT /experiences/1
  # PATCH/PUT /experiences/1.json
  def update
    @experience = Experience.find(params[:id])
    respond_to do |format|
      if @experience.update(experience_params)
        format.html { redirect_to @experience, notice: 'Experience was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /experiences/1
  # DELETE /experiences/1.json
  def destroy
    @experience = Experience.find(params[:id])
    @experience.destroy
    respond_to do |format|
      format.html { redirect_to experiences_url, notice: 'Experience was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def link_back
    back_id = Formation.where(cpf_candidato: current_user.cpf)
    @id_back = back_id.ids
    @id_back = @id_back[0]
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_experience
      @experience = Experience.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def experience_params
      params.require(:experience).permit(:empresa, :cargo, :admissao, :saida, :cpf_candidato)
    end
end
