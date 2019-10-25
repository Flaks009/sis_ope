require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get courses_url
    assert_response :success
  end

  test "should get new" do
    get new_course_url
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post courses_url, params: { course: { cpf_candidato: @course.cpf_candidato, final: @course.final, inicio: @course.inicio, instituicao: @course.instituicao, nome: @course.nome } }
    end

    assert_redirected_to course_url(Course.last)
  end

  test "should show course" do
    get course_url(@course)
    assert_response :success
  end

  test "should get edit" do
    get edit_course_url(@course)
    assert_response :success
  end

  test "should update course" do
    patch course_url(@course), params: { course: { cpf_candidato: @course.cpf_candidato, final: @course.final, inicio: @course.inicio, instituicao: @course.instituicao, nome: @course.nome } }
    assert_redirected_to course_url(@course)
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete course_url(@course)
    end

    assert_redirected_to courses_url
  end
=======
  # test "the truth" do
  #   assert true
  # end
>>>>>>> sprint3
end
