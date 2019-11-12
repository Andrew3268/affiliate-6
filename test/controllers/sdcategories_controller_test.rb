require 'test_helper'

class SdcategoriesControllerTest < ActionController::TestCase
  setup do
    @sdcategory = sdcategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sdcategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sdcategory" do
    assert_difference('Sdcategory.count') do
      post :create, sdcategory: { description: @sdcategory.description, display_in_navbar: @sdcategory.display_in_navbar, name: @sdcategory.name }
    end

    assert_redirected_to sdcategory_path(assigns(:sdcategory))
  end

  test "should show sdcategory" do
    get :show, id: @sdcategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sdcategory
    assert_response :success
  end

  test "should update sdcategory" do
    patch :update, id: @sdcategory, sdcategory: { description: @sdcategory.description, display_in_navbar: @sdcategory.display_in_navbar, name: @sdcategory.name }
    assert_redirected_to sdcategory_path(assigns(:sdcategory))
  end

  test "should destroy sdcategory" do
    assert_difference('Sdcategory.count', -1) do
      delete :destroy, id: @sdcategory
    end

    assert_redirected_to sdcategories_path
  end
end
