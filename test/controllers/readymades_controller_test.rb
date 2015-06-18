require 'test_helper'

class ReadymadesControllerTest < ActionController::TestCase
  setup do
    @readymade = readymades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:readymades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create readymade" do
    assert_difference('Readymade.count') do
      post :create, readymade: { productdiscription: @readymade.productdiscription, productid: @readymade.productid, productname: @readymade.productname }
    end

    assert_redirected_to readymade_path(assigns(:readymade))
  end

  test "should show readymade" do
    get :show, id: @readymade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @readymade
    assert_response :success
  end

  test "should update readymade" do
    patch :update, id: @readymade, readymade: { productdiscription: @readymade.productdiscription, productid: @readymade.productid, productname: @readymade.productname }
    assert_redirected_to readymade_path(assigns(:readymade))
  end

  test "should destroy readymade" do
    assert_difference('Readymade.count', -1) do
      delete :destroy, id: @readymade
    end

    assert_redirected_to readymades_path
  end
end
