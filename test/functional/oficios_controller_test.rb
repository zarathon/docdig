require 'test_helper'

class OficiosControllerTest < ActionController::TestCase
  setup do
    @oficio = oficios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oficios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oficio" do
    assert_difference('Oficio.count') do
      post :create, oficio: { codigo: @oficio.codigo, data: @oficio.data, enviado: @oficio.enviado, numero: @oficio.numero, observacao: @oficio.observacao }
    end

    assert_redirected_to oficio_path(assigns(:oficio))
  end

  test "should show oficio" do
    get :show, id: @oficio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @oficio
    assert_response :success
  end

  test "should update oficio" do
    put :update, id: @oficio, oficio: { codigo: @oficio.codigo, data: @oficio.data, enviado: @oficio.enviado, numero: @oficio.numero, observacao: @oficio.observacao }
    assert_redirected_to oficio_path(assigns(:oficio))
  end

  test "should destroy oficio" do
    assert_difference('Oficio.count', -1) do
      delete :destroy, id: @oficio
    end

    assert_redirected_to oficios_path
  end
end
