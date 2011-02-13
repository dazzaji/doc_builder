require 'test_helper'

class TempDocsControllerTest < ActionController::TestCase
  setup do
    @temp_doc = temp_docs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:temp_docs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create temp_doc" do
    assert_difference('TempDoc.count') do
      post :create, :temp_doc => @temp_doc.attributes
    end

    assert_redirected_to temp_doc_path(assigns(:temp_doc))
  end

  test "should show temp_doc" do
    get :show, :id => @temp_doc.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @temp_doc.to_param
    assert_response :success
  end

  test "should update temp_doc" do
    put :update, :id => @temp_doc.to_param, :temp_doc => @temp_doc.attributes
    assert_redirected_to temp_doc_path(assigns(:temp_doc))
  end

  test "should destroy temp_doc" do
    assert_difference('TempDoc.count', -1) do
      delete :destroy, :id => @temp_doc.to_param
    end

    assert_redirected_to temp_docs_path
  end
end
