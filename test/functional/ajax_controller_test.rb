require 'test_helper'

class AjaxControllerTest < ActionController::TestCase
  test "should get refpt" do
    get :refpt
    assert_response :success
  end

end
