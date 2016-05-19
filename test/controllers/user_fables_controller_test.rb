require 'test_helper'

class UserFablesControllerTest < ActionController::TestCase
  setup do
    @user_fable = user_fables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_fables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_fable" do
    assert_difference('UserFable.count') do
      post :create, user_fable: {  }
    end

    assert_redirected_to user_fable_path(assigns(:user_fable))
  end

  test "should show user_fable" do
    get :show, id: @user_fable
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_fable
    assert_response :success
  end

  test "should update user_fable" do
    patch :update, id: @user_fable, user_fable: {  }
    assert_redirected_to user_fable_path(assigns(:user_fable))
  end

  test "should destroy user_fable" do
    assert_difference('UserFable.count', -1) do
      delete :destroy, id: @user_fable
    end

    assert_redirected_to user_fables_path
  end
end
