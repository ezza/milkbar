require 'test_helper'

class stockControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stock)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stock" do
    assert_difference('Stock.count') do
      post :create, :stock => { }
    end

    assert_redirected_to stock_path(assigns(:stock))
  end

  test "should show stock" do
    get :show, :id => stock(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => stock(:one).to_param
    assert_response :success
  end

  test "should update stock" do
    put :update, :id => stock(:one).to_param, :stock => { }
    assert_redirected_to stock_path(assigns(:stock))
  end

  test "should destroy stock" do
    assert_difference('Stock.count', -1) do
      delete :destroy, :id => stock(:one).to_param
    end

    assert_redirected_to stock_path
  end
end
