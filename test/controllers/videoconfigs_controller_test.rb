require 'test_helper'

class VideoconfigsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get videoconfigs_index_url
    assert_response :success
  end

  test "should get edit" do
    get videoconfigs_edit_url
    assert_response :success
  end

end
