require 'test_helper'

class Admin::MetumPostControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_metum_post_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_metum_post_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_metum_post_create_url
    assert_response :success
  end

  test "should get edit" do
    get admin_metum_post_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_metum_post_update_url
    assert_response :success
  end

  test "should get desroy" do
    get admin_metum_post_desroy_url
    assert_response :success
  end

end
