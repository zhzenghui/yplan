require 'test_helper'

class CommentmetaControllerTest < ActionController::TestCase
  setup do
    @commentmetum = commentmeta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commentmeta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commentmetum" do
    assert_difference('Commentmetum.count') do
      post :create, commentmetum: { comment_id: @commentmetum.comment_id, meta_id: @commentmetum.meta_id, meta_key: @commentmetum.meta_key, meta_value: @commentmetum.meta_value }
    end

    assert_redirected_to commentmetum_path(assigns(:commentmetum))
  end

  test "should show commentmetum" do
    get :show, id: @commentmetum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commentmetum
    assert_response :success
  end

  test "should update commentmetum" do
    patch :update, id: @commentmetum, commentmetum: { comment_id: @commentmetum.comment_id, meta_id: @commentmetum.meta_id, meta_key: @commentmetum.meta_key, meta_value: @commentmetum.meta_value }
    assert_redirected_to commentmetum_path(assigns(:commentmetum))
  end

  test "should destroy commentmetum" do
    assert_difference('Commentmetum.count', -1) do
      delete :destroy, id: @commentmetum
    end

    assert_redirected_to commentmeta_path
  end
end
