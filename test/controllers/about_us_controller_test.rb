require 'test_helper'

class AboutUsControllerTest < ActionController::TestCase
  test "should get about_dc" do
    get :about_dc
    assert_response :success
  end

end
