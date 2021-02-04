require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get sample02" do
    get pages_sample02_url
    assert_response :success
  end

end
