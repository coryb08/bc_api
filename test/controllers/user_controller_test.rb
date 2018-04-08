require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get role:string" do
    get user_role:string_url
    assert_response :success
  end

  test "should get email:string" do
    get user_email:string_url
    assert_response :success
  end

  test "should get first_name:string" do
    get user_first_name:string_url
    assert_response :success
  end

  test "should get last_name:string" do
    get user_last_name:string_url
    assert_response :success
  end

  test "should get year:integer" do
    get user_year:integer_url
    assert_response :success
  end

  test "should get uid:string" do
    get user_uid:string_url
    assert_response :success
  end

end
