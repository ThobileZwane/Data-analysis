require 'test_helper'

class PractiseControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get practise_index_url
    assert_response :success
  end

end
