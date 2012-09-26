require 'test_helper'

class PagesControllerTest < ActionController::TestCase

  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about_us" do
    get :about_us
    assert_response :success
  end

  test "should get opportunities" do
    get :opportunities
    assert_response :success
  end

  test "should get interns_and_staff" do
    get :interns_and_staff
    assert_response :success
  end

  test "should get benefits" do
    get :benefits
    assert_response :success
  end

  test "should get partnerships" do
    get :partnerships
    assert_response :success
  end

  test "should get contact_us" do
    get :contact_us
    assert_response :success
  end

  test "should get admin" do
    get :admin
    assert_response :success
  end

end
