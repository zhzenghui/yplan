require 'test_helper'

class PostmetaControllerTest < ActionController::TestCase
  setup do
    @postmetum = postmeta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postmeta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postmetum" do
    assert_difference('Postmetum.count') do
      post :create, postmetum: { meta_id: @postmetum.meta_id, meta_key: @postmetum.meta_key, meta_value: @postmetum.meta_value, post_id: @postmetum.post_id }
    end

    assert_redirected_to postmetum_path(assigns(:postmetum))
  end

  test "should show postmetum" do
    get :show, id: @postmetum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postmetum
    assert_response :success
  end

  test "should update postmetum" do
    patch :update, id: @postmetum, postmetum: { meta_id: @postmetum.meta_id, meta_key: @postmetum.meta_key, meta_value: @postmetum.meta_value, post_id: @postmetum.post_id }
    assert_redirected_to postmetum_path(assigns(:postmetum))
  end

  test "should destroy postmetum" do
    assert_difference('Postmetum.count', -1) do
      delete :destroy, id: @postmetum
    end

    assert_redirected_to postmeta_path
  end
end
