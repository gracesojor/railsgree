require 'test_helper'

class EventsControllerTest < ActionController::TestCase
  test "should get createevent" do
    get :createevent
    assert_response :success
  end

end
