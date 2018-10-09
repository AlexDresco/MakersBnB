require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcome_index_url
    assert_response :success
    assert_select 'a',"Log in"
    assert_select 'a',"Sign up"
    assert_select 'a',"View all properties"
  end

  test "should direct to sign up" do
    get welcome_index_url
    assert_response :success
    click_on 'Sign up'
    assert_select "Please sign up below:"
    page.assert_current_path('/welcome/signup')
  end
end
