require 'test_helper'

class ClinicasControllerTest < ActionController::TestCase
  setup do
    @clinica = clinicas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clinicas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clinica" do
    assert_difference('Clinica.count') do
      post :create, clinica: { bairro: @clinica.bairro, cep: @clinica.cep, cidade_id: @clinica.cidade_id, end_complemento: @clinica.end_complemento, end_numero: @clinica.end_numero, endereco: @clinica.endereco, medico_id: @clinica.medico_id, nome: @clinica.nome, telefone: @clinica.telefone, uf: @clinica.uf }
    end

    assert_redirected_to clinica_path(assigns(:clinica))
  end

  test "should show clinica" do
    get :show, id: @clinica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clinica
    assert_response :success
  end

  test "should update clinica" do
    patch :update, id: @clinica, clinica: { bairro: @clinica.bairro, cep: @clinica.cep, cidade_id: @clinica.cidade_id, end_complemento: @clinica.end_complemento, end_numero: @clinica.end_numero, endereco: @clinica.endereco, medico_id: @clinica.medico_id, nome: @clinica.nome, telefone: @clinica.telefone, uf: @clinica.uf }
    assert_redirected_to clinica_path(assigns(:clinica))
  end

  test "should destroy clinica" do
    assert_difference('Clinica.count', -1) do
      delete :destroy, id: @clinica
    end

    assert_redirected_to clinicas_path
  end
end
