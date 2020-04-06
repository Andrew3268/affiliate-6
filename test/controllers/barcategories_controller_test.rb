require 'test_helper'

class BarcategoriesControllerTest < ActionController::TestCase
  setup do
    @barcategory = barcategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barcategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barcategory" do
    assert_difference('Barcategory.count') do
      post :create, barcategory: { description: @barcategory.description, display_in_navbar: @barcategory.display_in_navbar, name: @barcategory.name }
    end

    assert_redirected_to barcategory_path(assigns(:barcategory))
  end

  test "should show barcategory" do
    get :show, id: @barcategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barcategory
    assert_response :success
  end

  test "should update barcategory" do
    patch :update, id: @barcategory, barcategory: { description: @barcategory.description, display_in_navbar: @barcategory.display_in_navbar, name: @barcategory.name }
    assert_redirected_to barcategory_path(assigns(:barcategory))
  end

  test "should destroy barcategory" do
    assert_difference('Barcategory.count', -1) do
      delete :destroy, id: @barcategory
    end

    assert_redirected_to barcategories_path
  end
end
