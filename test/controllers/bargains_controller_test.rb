require 'test_helper'

class BargainsControllerTest < ActionController::TestCase
  setup do
    @bargain = bargains(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bargains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bargain" do
    assert_difference('Bargain.count') do
      post :create, bargain: { barcategory_id: @bargain.barcategory_id, body: @bargain.body, title: @bargain.title }
    end

    assert_redirected_to bargain_path(assigns(:bargain))
  end

  test "should show bargain" do
    get :show, id: @bargain
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bargain
    assert_response :success
  end

  test "should update bargain" do
    patch :update, id: @bargain, bargain: { barcategory_id: @bargain.barcategory_id, body: @bargain.body, title: @bargain.title }
    assert_redirected_to bargain_path(assigns(:bargain))
  end

  test "should destroy bargain" do
    assert_difference('Bargain.count', -1) do
      delete :destroy, id: @bargain
    end

    assert_redirected_to bargains_path
  end
end
