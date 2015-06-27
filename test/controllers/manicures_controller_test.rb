require 'test_helper'

class ManicuresControllerTest < ActionController::TestCase
  setup do
    @manicure = manicures(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:manicures)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create manicure" do
    assert_difference('Manicure.count') do
      post :create, manicure: { accents: @manicure.accents, colourid: @manicure.colourid, numaccents: @manicure.numaccents, numcol: @manicure.numcol, techid: @manicure.techid }
    end

    assert_redirected_to manicure_path(assigns(:manicure))
  end

  test "should show manicure" do
    get :show, id: @manicure
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @manicure
    assert_response :success
  end

  test "should update manicure" do
    patch :update, id: @manicure, manicure: { accents: @manicure.accents, colourid: @manicure.colourid, numaccents: @manicure.numaccents, numcol: @manicure.numcol, techid: @manicure.techid }
    assert_redirected_to manicure_path(assigns(:manicure))
  end

  test "should destroy manicure" do
    assert_difference('Manicure.count', -1) do
      delete :destroy, id: @manicure
    end

    assert_redirected_to manicures_path
  end
end
