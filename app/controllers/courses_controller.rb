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
    end
  
    # GET /candidatos/1/edit
    def edit
      if current_user
        findQuery = Course.where(cpf_candidato: @current_user.cpf)
        id = findQuery.ids
        @course = Course.find_by_id(id)
      end
    end
  
    # POST /candidatos
    # POST /candidatos.json
    def create
      if current_user
        if @candidato = Candidato.where(cpf: @current_user.cpf).count == 0
          @course = Course.new(course_params)
  
          respond_to do |format|
            if @course.save
              format.html { redirect_to @course, notice: 'Course was successfully created.' }
            else
              format.html { render :new }
            end
          end
        else
          render "confirm/_form"
        end
      end
    end
  
    # PATCH/PUT /candidatos/1
    # PATCH/PUT /candidatos/1.json
    def update
  
      @course = Course.find(params[:id])
  
      respond_to do |format|
        if @course.update(course_params)
          format.html { redirect_to @course, notice: 'Candidato was successfully updated.' }
        else
          format.html { render :edit }
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
      back_id = Experience.where(cpf_candidato: current_user.cpf)
      @id_back = back_id.ids
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
