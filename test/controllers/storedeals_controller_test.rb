require 'test_helper'

class StoredealsControllerTest < ActionController::TestCase
  setup do
    @storedeal = storedeals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:storedeals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create storedeal" do
    assert_difference('Storedeal.count') do
      post :create, storedeal: { body: @storedeal.body, sdcategory_id: @storedeal.sdcategory_id, title: @storedeal.title }
    end

    assert_redirected_to storedeal_path(assigns(:storedeal))
  end

  test "should show storedeal" do
    get :show, id: @storedeal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @storedeal
    assert_response :success
  end

  test "should update storedeal" do
    patch :update, id: @storedeal, storedeal: { body: @storedeal.body, sdcategory_id: @storedeal.sdcategory_id, title: @storedeal.title }
    assert_redirected_to storedeal_path(assigns(:storedeal))
  end

  test "should destroy storedeal" do
    assert_difference('Storedeal.count', -1) do
      delete :destroy, id: @storedeal
    end

    assert_redirected_to storedeals_path
  end
end
