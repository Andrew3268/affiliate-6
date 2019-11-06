require 'test_helper'

class SpcategoriesControllerTest < ActionController::TestCase
  setup do
    @spcategory = spcategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spcategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spcategory" do
    assert_difference('Spcategory.count') do
      post :create, spcategory: { display_in_navbar: @spcategory.display_in_navbar, spc_description: @spcategory.spc_description, spc_name: @spcategory.spc_name }
    end

    assert_redirected_to spcategory_path(assigns(:spcategory))
  end

  test "should show spcategory" do
    get :show, id: @spcategory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spcategory
    assert_response :success
  end

  test "should update spcategory" do
    patch :update, id: @spcategory, spcategory: { display_in_navbar: @spcategory.display_in_navbar, spc_description: @spcategory.spc_description, spc_name: @spcategory.spc_name }
    assert_redirected_to spcategory_path(assigns(:spcategory))
  end

  test "should destroy spcategory" do
    assert_difference('Spcategory.count', -1) do
      delete :destroy, id: @spcategory
    end

    assert_redirected_to spcategories_path
  end
end
