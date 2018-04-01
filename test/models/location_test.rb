require 'test_helper'

class LocationTest < ActiveSupport::TestCase
  def setup
    @location = locations(:atlanta)
  end

  test "should be valid" do
    assert @location.valid?
  end

  test "formatted_address should be present" do
    @location.formatted_address = nil
    assert_not @location.valid?
  end

  test "latitude should be present" do
    @location.latitude = nil
    assert_not @location.valid?
  end

  test "latitude should be a decimal" do
    @location.latitude = 'not a decimal'
    assert_not @location.valid?
  end

  test "longitude should be present" do
    @location.longitude = nil
    assert_not @location.valid?
  end

  test "longitude should be a decimal" do
    @location.longitude = 'not a decimal'
    assert_not @location.valid?
  end
end
