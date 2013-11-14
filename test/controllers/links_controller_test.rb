require 'test_helper'

class LinksControllerTest < ActionController::TestCase
  setup do
    @link = links(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create link" do
    assert_difference('Link.count') do
      post :create, link: { link_description: @link.link_description, link_id: @link.link_id, link_image: @link.link_image, link_name: @link.link_name, link_notes: @link.link_notes, link_owner: @link.link_owner, link_rating: @link.link_rating, link_rel: @link.link_rel, link_rss: @link.link_rss, link_target: @link.link_target, link_updated: @link.link_updated, link_url: @link.link_url, link_visible: @link.link_visible, time: @link.time }
    end

    assert_redirected_to link_path(assigns(:link))
  end

  test "should show link" do
    get :show, id: @link
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @link
    assert_response :success
  end

  test "should update link" do
    patch :update, id: @link, link: { link_description: @link.link_description, link_id: @link.link_id, link_image: @link.link_image, link_name: @link.link_name, link_notes: @link.link_notes, link_owner: @link.link_owner, link_rating: @link.link_rating, link_rel: @link.link_rel, link_rss: @link.link_rss, link_target: @link.link_target, link_updated: @link.link_updated, link_url: @link.link_url, link_visible: @link.link_visible, time: @link.time }
    assert_redirected_to link_path(assigns(:link))
  end

  test "should destroy link" do
    assert_difference('Link.count', -1) do
      delete :destroy, id: @link
    end

    assert_redirected_to links_path
  end
end
