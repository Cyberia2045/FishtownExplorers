require 'test_helper'

class GeoControllerTest < ActionDispatch::IntegrationTest
  test "should get locate" do
    get geo_locate_url
    assert_response :success
  end

end
