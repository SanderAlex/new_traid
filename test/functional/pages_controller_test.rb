require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get sert" do
    get :sert
    assert_response :success
  end

  test "should get payment" do
    get :payment
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get map" do
    get :map
    assert_response :success
  end

end
