require 'test_helper'

class TermTaxonomiesControllerTest < ActionController::TestCase
  setup do
    @term_taxonomy = term_taxonomies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:term_taxonomies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create term_taxonomy" do
    assert_difference('TermTaxonomy.count') do
      post :create, term_taxonomy: { count: @term_taxonomy.count, description: @term_taxonomy.description, parent: @term_taxonomy.parent, taxonomy: @term_taxonomy.taxonomy, term_id: @term_taxonomy.term_id, term_taxonomy_id: @term_taxonomy.term_taxonomy_id }
    end

    assert_redirected_to term_taxonomy_path(assigns(:term_taxonomy))
  end

  test "should show term_taxonomy" do
    get :show, id: @term_taxonomy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @term_taxonomy
    assert_response :success
  end

  test "should update term_taxonomy" do
    patch :update, id: @term_taxonomy, term_taxonomy: { count: @term_taxonomy.count, description: @term_taxonomy.description, parent: @term_taxonomy.parent, taxonomy: @term_taxonomy.taxonomy, term_id: @term_taxonomy.term_id, term_taxonomy_id: @term_taxonomy.term_taxonomy_id }
    assert_redirected_to term_taxonomy_path(assigns(:term_taxonomy))
  end

  test "should destroy term_taxonomy" do
    assert_difference('TermTaxonomy.count', -1) do
      delete :destroy, id: @term_taxonomy
    end

    assert_redirected_to term_taxonomies_path
  end
end
