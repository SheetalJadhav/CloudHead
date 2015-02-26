require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get cloudhead" do
    get :cloudhead
    assert_response :success
  end

end
