require 'test_helper'

class VideogenresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get videogenres_index_url
    assert_response :success
  end

  test "should get add" do
    get videogenres_add_url
    assert_response :success
  end

  test "should get edit" do
    get videogenres_edit_url
    assert_response :success
  end

end
