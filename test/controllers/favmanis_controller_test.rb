require 'test_helper'

class FavmanisControllerTest < ActionController::TestCase
  setup do
    @favmani = favmanis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:favmanis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create favmani" do
    assert_difference('Favmani.count') do
      post :create, favmani: { accents: @favmani.accents, colourid: @favmani.colourid, label: @favmani.label, numaccents: @favmani.numaccents, numcol: @favmani.numcol, techid: @favmani.techid }
    end

    assert_redirected_to favmani_path(assigns(:favmani))
  end

  test "should show favmani" do
    get :show, id: @favmani
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @favmani
    assert_response :success
  end

  test "should update favmani" do
    patch :update, id: @favmani, favmani: { accents: @favmani.accents, colourid: @favmani.colourid, label: @favmani.label, numaccents: @favmani.numaccents, numcol: @favmani.numcol, techid: @favmani.techid }
    assert_redirected_to favmani_path(assigns(:favmani))
  end

  test "should destroy favmani" do
    assert_difference('Favmani.count', -1) do
      delete :destroy, id: @favmani
    end

    assert_redirected_to favmanis_path
  end
end
