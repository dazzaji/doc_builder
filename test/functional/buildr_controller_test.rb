require 'test_helper'

class BuildrControllerTest < ActionController::TestCase
  test "should get build" do
    get :build
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get fill" do
    get :fill
    assert_response :success
  end

  test "should get finish" do
    get :finish
    assert_response :success
  end

  test "should get start" do
    get :start
    assert_response :success
  end

end
