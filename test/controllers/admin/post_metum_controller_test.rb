require 'test_helper'

class Admin::PostMetumControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_post_metum_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_post_metum_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_post_metum_create_url
    assert_response :success
  end

  test "should get edit" do
    get admin_post_metum_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_post_metum_update_url
    assert_response :success
  end

  test "should get desroy" do
    get admin_post_metum_desroy_url
    assert_response :success
  end

end
