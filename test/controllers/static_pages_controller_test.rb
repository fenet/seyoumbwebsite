require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get contact_us" do
    get static_pages_contact_us_url
    assert_response :success
  end

  test "should get about_us" do
    get static_pages_about_us_url
    assert_response :success
  end

  test "should get home" do
    get static_pages_home_url
    assert_response :success
  end

end
