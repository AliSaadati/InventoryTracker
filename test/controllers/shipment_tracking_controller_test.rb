require 'test_helper'

class ShipmentTrackingControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
