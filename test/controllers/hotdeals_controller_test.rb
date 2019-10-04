require 'test_helper'

class HotdealsControllerTest < ActionController::TestCase
  setup do
    @hotdeal = hotdeals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hotdeals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hotdeal" do
    assert_difference('Hotdeal.count') do
      post :create, hotdeal: {  }
    end

    assert_redirected_to hotdeal_path(assigns(:hotdeal))
  end

  test "should show hotdeal" do
    get :show, id: @hotdeal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hotdeal
    assert_response :success
  end

  test "should update hotdeal" do
    patch :update, id: @hotdeal, hotdeal: {  }
    assert_redirected_to hotdeal_path(assigns(:hotdeal))
  end

  test "should destroy hotdeal" do
    assert_difference('Hotdeal.count', -1) do
      delete :destroy, id: @hotdeal
    end

    assert_redirected_to hotdeals_path
  end
end
