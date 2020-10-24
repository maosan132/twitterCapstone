require 'test_helper'

class TastesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tastes_index_url
    assert_response :success
  end

  test "should get new" do
    get tastes_new_url
    assert_response :success
  end

  test "should get create" do
    get tastes_create_url
    assert_response :success
  end

  test "should get findout" do
    get tastes_findout_url
    assert_response :success
  end

end
