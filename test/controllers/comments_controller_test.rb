require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
  setup do
    @comment = comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comment" do
    assert_difference('Comment.count') do
      post :create, comment: { comment_ID: @comment.comment_ID, comment_agent: @comment.comment_agent, comment_approved: @comment.comment_approved, comment_author: @comment.comment_author, comment_author_IP: @comment.comment_author_IP, comment_author_email: @comment.comment_author_email, comment_author_url: @comment.comment_author_url, comment_content: @comment.comment_content, comment_date: @comment.comment_date, comment_date_gmt: @comment.comment_date_gmt, comment_karma: @comment.comment_karma, comment_parent: @comment.comment_parent, comment_post_ID: @comment.comment_post_ID, comment_type: @comment.comment_type, user_id: @comment.user_id }
    end

    assert_redirected_to comment_path(assigns(:comment))
  end

  test "should show comment" do
    get :show, id: @comment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comment
    assert_response :success
  end

  test "should update comment" do
    patch :update, id: @comment, comment: { comment_ID: @comment.comment_ID, comment_agent: @comment.comment_agent, comment_approved: @comment.comment_approved, comment_author: @comment.comment_author, comment_author_IP: @comment.comment_author_IP, comment_author_email: @comment.comment_author_email, comment_author_url: @comment.comment_author_url, comment_content: @comment.comment_content, comment_date: @comment.comment_date, comment_date_gmt: @comment.comment_date_gmt, comment_karma: @comment.comment_karma, comment_parent: @comment.comment_parent, comment_post_ID: @comment.comment_post_ID, comment_type: @comment.comment_type, user_id: @comment.user_id }
    assert_redirected_to comment_path(assigns(:comment))
  end

  test "should destroy comment" do
    assert_difference('Comment.count', -1) do
      delete :destroy, id: @comment
    end

    assert_redirected_to comments_path
  end
end
