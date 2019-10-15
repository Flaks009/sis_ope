require 'test_helper'

class FormationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @formation = formations(:one)
  end

  test "should get index" do
    get formations_url
    assert_response :success
  end

  test "should get new" do
    get new_formation_url
    assert_response :success
  end

  test "should create formation" do
    assert_difference('Formation.count') do
      post formations_url, params: { formation: { cpf_candidato: @formation.cpf_candidato, curso: @formation.curso, data_final: @formation.data_final, data_inicio: @formation.data_inicio, instituicao: @formation.instituicao, tipo: @formation.tipo } }
    end

    assert_redirected_to formation_url(Formation.last)
  end

  test "should show formation" do
    get formation_url(@formation)
    assert_response :success
  end

  test "should get edit" do
    get edit_formation_url(@formation)
    assert_response :success
  end

  test "should update formation" do
    patch formation_url(@formation), params: { formation: { cpf_candidato: @formation.cpf_candidato, curso: @formation.curso, data_final: @formation.data_final, data_inicio: @formation.data_inicio, instituicao: @formation.instituicao, tipo: @formation.tipo } }
    assert_redirected_to formation_url(@formation)
  end

  test "should destroy formation" do
    assert_difference('Formation.count', -1) do
      delete formation_url(@formation)
    end

    assert_redirected_to formations_url
  end
end
