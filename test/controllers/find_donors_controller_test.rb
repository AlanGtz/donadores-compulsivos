require 'test_helper'

class FindDonorsControllerTest < ActionController::TestCase
  test "should get find_donors" do
    get :find_donors
    assert_response :success
  end

end
