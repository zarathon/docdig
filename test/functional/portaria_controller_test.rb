require 'test_helper'

class PortariaControllerTest < ActionController::TestCase
  setup do
    @portarium = portaria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:portaria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create portarium" do
    assert_difference('Portarium.count') do
      post :create, portarium: { data: @portarium.data, numero: @portarium.numero, observacao: @portarium.observacao }
    end

    assert_redirected_to portarium_path(assigns(:portarium))
  end

  test "should show portarium" do
    get :show, id: @portarium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @portarium
    assert_response :success
  end

  test "should update portarium" do
    put :update, id: @portarium, portarium: { data: @portarium.data, numero: @portarium.numero, observacao: @portarium.observacao }
    assert_redirected_to portarium_path(assigns(:portarium))
  end

  test "should destroy portarium" do
    assert_difference('Portarium.count', -1) do
      delete :destroy, id: @portarium
    end

    assert_redirected_to portaria_path
  end
end
