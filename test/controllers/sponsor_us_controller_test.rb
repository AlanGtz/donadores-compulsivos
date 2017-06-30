require 'test_helper'

class SponsorUsControllerTest < ActionController::TestCase
  test "should get sponsor_form" do
    get :sponsor_form
    assert_response :success
  end

end
