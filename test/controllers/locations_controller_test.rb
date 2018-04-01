require 'test_helper'

class LocationsControllerTest < ActionDispatch::IntegrationTest
  test "should create" do
    assert_difference 'Location.count', 1 do
      post locations_path, params: { location: {
        formatted_address: 'Foo bar, GA, USA',
        latitude: '0.0',
        longitude: '-1.0'
      } }
    end
    assert_response :success
  end
end
