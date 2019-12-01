class CoursesController < ApplicationController
    before_action :set_candidato, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!
    after_filter "link_back", only: [:new]


    def index
      if current_user
        @courses = Course.where(cpf_candidato: @current_user.cpf)
      end
    end  

    # GET /courses/new
    def new
      @course = Course.new
      link_back
      link_forward
    end
  
    # GET /candidatos/1/edit
    def edit
      if current_user
        if current_user.tipoUser == "candidato"
          findQuery = Course.where(cpf_candidato: @current_user.cpf)
          id = findQuery.ids
          @course = Course.find_by_id(id)
        elsif current_user.tipoUser == "admin"
          @course = Course.find(params[:id])
        end        
      end
      link_back
    end
  
    # POST /candidatos
    # POST /candidatos.json
    def create
      if current_user
          @course = Course.new(course_params)
          respond_to do |format|
            if @course.save
              format.html { render "/confirm/_form" }
            else
              format.html { render :new }
            end
          end
        else
          render "candidatos/menu/mainMenu"
      end
    end
  
    # PATCH/PUT /candidatos/1
    def update
      @course = Course.find(params[:id])
      respond_to do |format|
        if @course.update(course_params)
          format.html { render "/confirm/_form" }
        end
      end
    end
  
    # DELETE /candidatos/1
    # DELETE /candidatos/1.json
    def destroy
      @course = Course.find(params[:id])
      @course.destroy
      respond_to do |format|
        format.html { redirect_to candidatos_url, notice: 'Candidato was successfully destroyed.' }
      end
    end

    def link_back
      if current_user.tipoUser == 'candidato'
        back_id = Experience.where(cpf_candidato: current_user.cpf)
        @id_back_experience = back_id.ids
        @id_back_experience = @id_back_experience[0]
      elsif current_user.tipoUser == 'admin'
        back_id = Experience.where(cpf_candidato: @course.cpf_candidato)
        @id_back_experience = back_id.ids
        @id_back_experience = @id_back_experience[0]
      end
    end

    def link_forward
      forward_id = Course.where(cpf_candidato: current_user.cpf)
      @id_forward_course = forward_id.ids
      @id_forward_course = @id_forward_course[0]
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_candidato
        @course = Course.where(cpf_candidato: current_user.cpf)      
      end
  
      # Never trust parameters from the scary internet, only allow the white list through.
      def course_params
        params.require(:course).permit(:nome,:instituicao,:inicio,:final,:cpf_candidato)
      end
end
