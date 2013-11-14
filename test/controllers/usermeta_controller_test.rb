require 'test_helper'

class UsermetaControllerTest < ActionController::TestCase
  setup do
    @usermetum = usermeta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usermeta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usermetum" do
    assert_difference('Usermetum.count') do
      post :create, usermetum: { meta_key: @usermetum.meta_key, meta_value: @usermetum.meta_value, umeta_id: @usermetum.umeta_id, user_id: @usermetum.user_id }
    end

    assert_redirected_to usermetum_path(assigns(:usermetum))
  end

  test "should show usermetum" do
    get :show, id: @usermetum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usermetum
    assert_response :success
  end

  test "should update usermetum" do
    patch :update, id: @usermetum, usermetum: { meta_key: @usermetum.meta_key, meta_value: @usermetum.meta_value, umeta_id: @usermetum.umeta_id, user_id: @usermetum.user_id }
    assert_redirected_to usermetum_path(assigns(:usermetum))
  end

  test "should destroy usermetum" do
    assert_difference('Usermetum.count', -1) do
      delete :destroy, id: @usermetum
    end

    assert_redirected_to usermeta_path
  end
end
