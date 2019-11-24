require 'test_helper'

class VideopostControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get videopost_index_url
    assert_response :success
  end

  test "should get add" do
    get videopost_add_url
    assert_response :success
  end

  test "should get edit" do
    get videopost_edit_url
    assert_response :success
  end

  test "should get delete" do
    get videopost_delete_url
    assert_response :success
  end

end
