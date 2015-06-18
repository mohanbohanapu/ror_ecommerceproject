require 'test_helper'

class AllproductsControllerTest < ActionController::TestCase
  setup do
    @allproduct = allproducts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:allproducts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create allproduct" do
    assert_difference('Allproduct.count') do
      post :create, allproduct: { productdiscription: @allproduct.productdiscription, productid: @allproduct.productid, productname: @allproduct.productname }
    end

    assert_redirected_to allproduct_path(assigns(:allproduct))
  end

  test "should show allproduct" do
    get :show, id: @allproduct
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @allproduct
    assert_response :success
  end

  test "should update allproduct" do
    patch :update, id: @allproduct, allproduct: { productdiscription: @allproduct.productdiscription, productid: @allproduct.productid, productname: @allproduct.productname }
    assert_redirected_to allproduct_path(assigns(:allproduct))
  end

  test "should destroy allproduct" do
    assert_difference('Allproduct.count', -1) do
      delete :destroy, id: @allproduct
    end

    assert_redirected_to allproducts_path
  end
end
