require 'test_helper'

class HatemanisControllerTest < ActionController::TestCase
  setup do
    @hatemani = hatemanis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hatemanis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hatemani" do
    assert_difference('Hatemani.count') do
      post :create, hatemani: { colourid: @hatemani.colourid, techid: @hatemani.techid }
    end

    assert_redirected_to hatemani_path(assigns(:hatemani))
  end

  test "should show hatemani" do
    get :show, id: @hatemani
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hatemani
    assert_response :success
  end

  test "should update hatemani" do
    patch :update, id: @hatemani, hatemani: { colourid: @hatemani.colourid, techid: @hatemani.techid }
    assert_redirected_to hatemani_path(assigns(:hatemani))
  end

  test "should destroy hatemani" do
    assert_difference('Hatemani.count', -1) do
      delete :destroy, id: @hatemani
    end

    assert_redirected_to hatemanis_path
  end
end
