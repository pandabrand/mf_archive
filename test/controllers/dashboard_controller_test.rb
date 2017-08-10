require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboard_index_url
    assert_response :success
  end
  #test "should have divisions that are all active"
    # @divisions.is_active = 'Y'
  #end
end
