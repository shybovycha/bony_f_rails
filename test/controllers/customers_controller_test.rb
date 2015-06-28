require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  test "should get sign_up" do
    get :sign_up
    assert_response :success
  end

  test "should get ping_beacon" do
    get :ping_beacon
    assert_response :success
  end

end
