require 'test_helper'

class DisCourseControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
