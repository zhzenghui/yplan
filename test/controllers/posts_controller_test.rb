require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post :create, post: { comment_count: @post.comment_count, comment_status: @post.comment_status, guid: @post.guid, menu_order: @post.menu_order, ping_status: @post.ping_status, pinged: @post.pinged, post_author: @post.post_author, post_content: @post.post_content, post_content_filtered: @post.post_content_filtered, post_date: @post.post_date, post_date_gmt: @post.post_date_gmt, post_excerpt: @post.post_excerpt, post_id: @post.post_id, post_mime_type: @post.post_mime_type, post_modified: @post.post_modified, post_modified_gmt: @post.post_modified_gmt, post_name: @post.post_name, post_parent: @post.post_parent, post_password: @post.post_password, post_status: @post.post_status, post_title: @post.post_title, post_type: @post.post_type, to_ping: @post.to_ping }
    end

    assert_redirected_to post_path(assigns(:post))
  end

  test "should show post" do
    get :show, id: @post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @post
    assert_response :success
  end

  test "should update post" do
    patch :update, id: @post, post: { comment_count: @post.comment_count, comment_status: @post.comment_status, guid: @post.guid, menu_order: @post.menu_order, ping_status: @post.ping_status, pinged: @post.pinged, post_author: @post.post_author, post_content: @post.post_content, post_content_filtered: @post.post_content_filtered, post_date: @post.post_date, post_date_gmt: @post.post_date_gmt, post_excerpt: @post.post_excerpt, post_id: @post.post_id, post_mime_type: @post.post_mime_type, post_modified: @post.post_modified, post_modified_gmt: @post.post_modified_gmt, post_name: @post.post_name, post_parent: @post.post_parent, post_password: @post.post_password, post_status: @post.post_status, post_title: @post.post_title, post_type: @post.post_type, to_ping: @post.to_ping }
    assert_redirected_to post_path(assigns(:post))
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete :destroy, id: @post
    end

    assert_redirected_to posts_path
  end
end
