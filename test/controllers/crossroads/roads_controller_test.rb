require "test_helper"

class Crossroads::RoadsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get crossroads_roads_new_url
    assert_response :success
  end

  test "should get create" do
    get crossroads_roads_create_url
    assert_response :success
  end
end
