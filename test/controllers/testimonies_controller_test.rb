require 'test_helper'

class TestimoniesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get testimonies_index_url
    assert_response :success
  end

end
