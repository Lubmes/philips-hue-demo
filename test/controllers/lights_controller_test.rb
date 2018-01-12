require 'test_helper'

class LightsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lights_index_url
    assert_response :success
  end

  test "should get new" do
    get lights_new_url
    assert_response :success
  end

  test "should get create" do
    get lights_create_url
    assert_response :success
  end

  test "should get edit" do
    get lights_edit_url
    assert_response :success
  end

  test "should get update" do
    get lights_update_url
    assert_response :success
  end

  test "should get destroy" do
    get lights_destroy_url
    assert_response :success
  end

end
