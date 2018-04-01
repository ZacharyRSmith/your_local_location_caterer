require 'test_helper'

class ApplicationTest < ActionDispatch::IntegrationTest
  test "pagination" do
    get root_path
    assert_select '.pagination'
  end
end
