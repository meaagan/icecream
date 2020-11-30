require 'test_helper'

class SundaeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sundae_index_url
    assert_response :success
  end

  test "should get new" do
    get sundae_new_url
    assert_response :success
  end

  test "should get create" do
    get sundae_create_url
    assert_response :success
  end

  test "should get update" do
    get sundae_update_url
    assert_response :success
  end

  test "should get edit" do
    get sundae_edit_url
    assert_response :success
  end

  test "should get delete" do
    get sundae_delete_url
    assert_response :success
  end

  test "should get show" do
    get sundae_show_url
    assert_response :success
  end

end
