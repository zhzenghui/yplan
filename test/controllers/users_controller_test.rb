require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { display_name: @user.display_name, user_activation_key: @user.user_activation_key, user_email: @user.user_email, user_id: @user.user_id, user_login: @user.user_login, user_nicename: @user.user_nicename, user_pass: @user.user_pass, user_registered: @user.user_registered, user_status: @user.user_status, user_url: @user.user_url }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { display_name: @user.display_name, user_activation_key: @user.user_activation_key, user_email: @user.user_email, user_id: @user.user_id, user_login: @user.user_login, user_nicename: @user.user_nicename, user_pass: @user.user_pass, user_registered: @user.user_registered, user_status: @user.user_status, user_url: @user.user_url }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
