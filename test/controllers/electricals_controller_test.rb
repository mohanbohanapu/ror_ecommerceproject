require 'test_helper'

class ElectricalsControllerTest < ActionController::TestCase
  setup do
    @electrical = electricals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:electricals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create electrical" do
    assert_difference('Electrical.count') do
      post :create, electrical: { productdiscription: @electrical.productdiscription, productid: @electrical.productid, productname: @electrical.productname }
    end

    assert_redirected_to electrical_path(assigns(:electrical))
  end

  test "should show electrical" do
    get :show, id: @electrical
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @electrical
    assert_response :success
  end

  test "should update electrical" do
    patch :update, id: @electrical, electrical: { productdiscription: @electrical.productdiscription, productid: @electrical.productid, productname: @electrical.productname }
    assert_redirected_to electrical_path(assigns(:electrical))
  end

  test "should destroy electrical" do
    assert_difference('Electrical.count', -1) do
      delete :destroy, id: @electrical
    end

    assert_redirected_to electricals_path
  end
end
