require 'test_helper'

class CreditosControllerTest < ActionController::TestCase
  setup do
    @credito = creditos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:creditos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create credito" do
    assert_difference('Credito.count') do
      post :create, credito: { credito: @credito.credito, data_emissao: @credito.data_emissao, medico_id: @credito.medico_id, saldo: @credito.saldo }
    end

    assert_redirected_to credito_path(assigns(:credito))
  end

  test "should show credito" do
    get :show, id: @credito
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @credito
    assert_response :success
  end

  test "should update credito" do
    patch :update, id: @credito, credito: { credito: @credito.credito, data_emissao: @credito.data_emissao, medico_id: @credito.medico_id, saldo: @credito.saldo }
    assert_redirected_to credito_path(assigns(:credito))
  end

  test "should destroy credito" do
    assert_difference('Credito.count', -1) do
      delete :destroy, id: @credito
    end

    assert_redirected_to creditos_path
  end
end
