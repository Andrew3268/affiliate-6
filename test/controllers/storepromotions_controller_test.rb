require 'test_helper'

class StorepromotionsControllerTest < ActionController::TestCase
  setup do
    @storepromotion = storepromotions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:storepromotions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create storepromotion" do
    assert_difference('Storepromotion.count') do
      post :create, storepromotion: { sp_description: @storepromotion.sp_description, sp_title: @storepromotion.sp_title, spcategory_id: @storepromotion.spcategory_id }
    end

    assert_redirected_to storepromotion_path(assigns(:storepromotion))
  end

  test "should show storepromotion" do
    get :show, id: @storepromotion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @storepromotion
    assert_response :success
  end

  test "should update storepromotion" do
    patch :update, id: @storepromotion, storepromotion: { sp_description: @storepromotion.sp_description, sp_title: @storepromotion.sp_title, spcategory_id: @storepromotion.spcategory_id }
    assert_redirected_to storepromotion_path(assigns(:storepromotion))
  end

  test "should destroy storepromotion" do
    assert_difference('Storepromotion.count', -1) do
      delete :destroy, id: @storepromotion
    end

    assert_redirected_to storepromotions_path
  end
end
