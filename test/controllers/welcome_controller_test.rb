require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcome_index_url
    assert_response :success
    # assert_select 'a',"Log in"
    # assert_select 'a',"Sign up"
    # assert_select 'a',"View all properties"
  end

end
