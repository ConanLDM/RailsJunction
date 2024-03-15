require "test_helper"

class CrossroadsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get crossroads_show_url
    assert_response :success
  end
end
