require 'test_helper'

class UserxesControllerTest < ActionController::TestCase
  setup do
    @userx = userxes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userxes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create userx" do
    assert_difference('Userx.count') do
      post :create, userx: {  }
    end

    assert_redirected_to userx_path(assigns(:userx))
  end

  test "should show userx" do
    get :show, id: @userx
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @userx
    assert_response :success
  end

  test "should update userx" do
    patch :update, id: @userx, userx: {  }
    assert_redirected_to userx_path(assigns(:userx))
  end

  test "should destroy userx" do
    assert_difference('Userx.count', -1) do
      delete :destroy, id: @userx
    end

    assert_redirected_to userxes_path
  end
end
