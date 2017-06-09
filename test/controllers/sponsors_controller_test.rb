require 'test_helper'

class SponsorsControllerTest < ActionController::TestCase
  test "should get sponsors" do
    get :sponsors
    assert_response :success
  end

end
