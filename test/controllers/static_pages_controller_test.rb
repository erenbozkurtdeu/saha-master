require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get vekalet" do
    get static_pages_vekalet_url
    assert_response :success
  end

end
