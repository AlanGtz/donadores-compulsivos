require 'test_helper'

class DonateResultsControllerTest < ActionController::TestCase
  test "should get donate_results" do
    get :donate_results
    assert_response :success
  end

end
