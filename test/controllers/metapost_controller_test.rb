require 'test_helper'

class MetapostControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get metapost_index_url
    assert_response :success
  end

  test "should get new" do
    get metapost_new_url
    assert_response :success
  end

  test "should get create" do
    get metapost_create_url
    assert_response :success
  end

  test "should get edit" do
    get metapost_edit_url
    assert_response :success
  end

  test "should get update" do
    get metapost_update_url
    assert_response :success
  end

  test "should get desroy" do
    get metapost_desroy_url
    assert_response :success
  end

end
