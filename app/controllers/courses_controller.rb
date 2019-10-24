# frozen_string_literal: true

class CoursesController < ApplicationController
  before_action :set_course, only: %i[show edit update destroy]
  before_action :authenticate_user!

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.where(cpf_candidato: @current_user.cpf) if current_user
  end

  # GET /courses/1
  # GET /courses/1.json
  def show; end

  # GET /courses/new
  def new
    @course = Course.new
  end

  # GET /courses/1/edit
  def edit
    if current_user
      findQuery = Course.where(cpf_candidato: @current_user.cpf)
      id = findQuery.ids
      @course = Course.find_by_id(id)
    end
  end

  # POST /courses
  # POST /courses.json
  def create
    if current_user
      @course = Course.new(course_params)

      respond_to do |format|
        if @course.save
          format.html { redirect_to @course, notice: 'Course was successfully created.' }
        else
          format.html { render :new }
        end
      end
    else
      render 'candidatos/menu/mainMenu'
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    @course = Course.find(params[:id])
    respond_to do |format|
      if @course.update(course_params)
        format.html { redirect_to @course, notice: 'Course was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_course
    @course = Course.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def course_params
    params.require(:course).permit(:nome, :instituicao, :inicio, :final, :cpf_candidato)
  end
end
