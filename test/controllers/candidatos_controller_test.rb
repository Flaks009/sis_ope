require 'test_helper'

class CandidatosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @candidato = candidatos(:one)
  end

  test "should get index" do
    get candidatos_url
    assert_response :success
  end

  test "should get new" do
    get new_candidato_url
    assert_response :success
  end

  test "should create candidato" do
    assert_difference('Candidato.count') do
      post candidatos_url, params: { candidato: { cpf: @candidato.cpf, nome: @candidato.nome } }
    end

    assert_redirected_to candidato_url(Candidato.last)
  end

  test "should show candidato" do
    get candidato_url(@candidato)
    assert_response :success
  end

  test "should get edit" do
    get edit_candidato_url(@candidato)
    assert_response :success
  end

  test "should update candidato" do
    patch candidato_url(@candidato), params: { candidato: { cpf: @candidato.cpf, nome: @candidato.nome } }
    assert_redirected_to candidato_url(@candidato)
  end

  test "should destroy candidato" do
    assert_difference('Candidato.count', -1) do
      delete candidato_url(@candidato)
    end

    assert_redirected_to candidatos_url
  end
end
