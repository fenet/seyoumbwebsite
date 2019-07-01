require 'test_helper'

class PortofoliosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get portofolios_index_url
    assert_response :success
  end

  test "should get show" do
    get portofolios_show_url
    assert_response :success
  end

end
