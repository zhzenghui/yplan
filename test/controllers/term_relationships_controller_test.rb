require 'test_helper'

class TermRelationshipsControllerTest < ActionController::TestCase
  setup do
    @term_relationship = term_relationships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:term_relationships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create term_relationship" do
    assert_difference('TermRelationship.count') do
      post :create, term_relationship: { object_id: @term_relationship.object_id, term_order: @term_relationship.term_order, term_taxonomy_id: @term_relationship.term_taxonomy_id }
    end

    assert_redirected_to term_relationship_path(assigns(:term_relationship))
  end

  test "should show term_relationship" do
    get :show, id: @term_relationship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @term_relationship
    assert_response :success
  end

  test "should update term_relationship" do
    patch :update, id: @term_relationship, term_relationship: { object_id: @term_relationship.object_id, term_order: @term_relationship.term_order, term_taxonomy_id: @term_relationship.term_taxonomy_id }
    assert_redirected_to term_relationship_path(assigns(:term_relationship))
  end

  test "should destroy term_relationship" do
    assert_difference('TermRelationship.count', -1) do
      delete :destroy, id: @term_relationship
    end

    assert_redirected_to term_relationships_path
  end
end
