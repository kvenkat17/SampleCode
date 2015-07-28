require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  test "should get nextappt" do
    get :nextappt
    assert_response :success
  end

end
