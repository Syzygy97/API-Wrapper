require "test_helper"

class BerryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get berry_index_url
    assert_response :success
  end

  test "should get show" do
    get berry_show_url
    assert_response :success
  end
end
