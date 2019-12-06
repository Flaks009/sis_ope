class CandidatosController < ApplicationController
  before_action :set_candidato, only: [:show, :edit, :update, :destroy, :pdf_generate]
  before_action :authenticate_user!
  
  # GET /candidatos
  def index
    if current_user
      @candidato = Candidato.where(cpf: @current_user.cpf).count
    end
    render "candidatos/menu/mainMenu"
  end

  # GET /candidatos/edit
  def show
    if current_user.tipoUser == 'candidato'
      @candidato = Candidato.where(cpf: @current_user.cpf)
    elsif current_user.tipoUser == 'admin'
      if params[:campos_select] == "Documento"
        @candidato = Candidato.where('cpf ILIKE ?', "%#{params[:campos_value]}%")
      elsif params[:campos_select] == "Nome"
        @candidato = Candidato.where('nome ILIKE ?', "%#{params[:campos_value]}%")
      elsif params[:campos_select] == "Cidade"
        @candidato = Candidato.where('cidade ILIKE ?', "%#{params[:campos_value]}%")
      else
        @candidato = Candidato.all
      end
    end
  end

  # GET /candidatos/new
  def new
    @candidato = Candidato.new
  end

  # GET /candidatos/1/edit
  def edit
    if current_user.tipoUser == "candidato"
      findQuery = Candidato.where(cpf: @current_user.cpf)
      id = findQuery.ids
      @candidato = Candidato.find_by_id(id)
    elsif current_user.tipoUser == "admin"
      @candidato = Candidato.find(params[:id])
      findEmail = User.where(cpf: @candidato.cpf)
      idEmail = findEmail.ids
      @email = User.find_by_id(idEmail)
    end
  end

  # POST /candidatos
  # POST /candidatos.json
  def create
    if current_user
      if @candidato = Candidato.where(cpf: @current_user.cpf).count == 0
        @candidato = Candidato.new(candidato_params)

        respond_to do |format|
          if @candidato.save
            format.html { redirect_to "/formations/new"}
          else
            format.html { render :new }
          end
        end
      else
        render "candidatos/menu/mainMenu"
      end
    end
  end

  # PATCH/PUT /candidatos/1
  # PATCH/PUT /candidatos/1.json
  def update
    @candidato = Candidato.find(params[:id])
    respond_to do |format|
      if @candidato.update(candidato_params)
        link_forward
        if current_user.tipoUser == 'candidato'
          findQuery = Formation.where(cpf_candidato: @current_user.cpf)
          id = findQuery.ids
          formation = Formation.find_by_id(id)
        elsif current_user.tipoUser == 'admin'
          findQuery = Formation.where(cpf_candidato: @candidato.cpf)
          id = findQuery.ids
          formation = Formation.find_by_id(id)
        end
        if formation != nil
          format.html {redirect_to "/formations/#{@id_forward_formations}/edit"}
        else
          format.html {redirect_to "/formations/new"}
        end
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /candidatos/1
  # DELETE /candidatos/1.json
  def destroy
    @candidato = Candidato.find(params[:id])
    @candidato.destroy
    respond_to do |format|
      format.html { redirect_to candidatos_url, notice: 'Candidato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def link_forward
    if current_user.tipoUser == 'candidato'
      forward_id = Formation.where(cpf_candidato: current_user.cpf)
      @id_forward_formations = forward_id.ids
      @id_forward_formations = @id_forward_formations[0]
    elsif current_user.tipoUser == 'admin'
      forward_id = Formation.where(cpf_candidato: @candidato.cpf)
      @id_forward_formations = forward_id.ids
      @id_forward_formations = @id_forward_formations[0]
    end
  end

  def pdf_generate
    @candidato = Candidato.find(params[:id])
    cpf = @candidato.cpf

    @courses = Course.where(cpf_candidato: cpf)
    id = @courses.ids
    @courses = Course.find_by_id(id)

    @experience = Experience.where(cpf_candidato: cpf)
    id = @experience.ids
    @experience = Experience.find_by_id(id)


    @formation = Formation.where(cpf_candidato: cpf)
    id = @formation.ids
    @formation = Formation.find_by_id(id)

    @user = User.where(cpf: cpf)
    id = @user.ids
    @user = User.find_by_id(id)

    render 'candidatos/pdf/pdf'
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_candidato
      @candidato = Candidato.where(cpf: current_user.cpf)      
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def candidato_params
      params.require(:candidato).permit(:cpf, :nome, :data_nasc, :cep, :logradouro, :numero, :bairro, :cidade, :uf, :user_id, :name_term, :city_term, :cpf_term)
    end
end
