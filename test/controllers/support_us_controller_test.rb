require 'test_helper'

class SupportUsControllerTest < ActionController::TestCase
  test "should get support_us" do
    get :support_us
    assert_response :success
  end

end
