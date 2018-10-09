require 'test_helper'

class UserTest < ActiveSupport::TestCase
  
  def setup
    @user = User.new(name: "Example User", email: "user@example.com", password:"examplePW")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "blank name field should not be valid" do
    @user.name = " "
    assert_not @user.valid?
  end
  
  test "blank email address should not be valid" do
    @user.email = ""
    assert_not @user.valid?
  end

  test "email is in email format" do
    @user.email = "hi@aol.co.uk"
    assert @user.valid?
  end

  test "email in non standard format is not valid" do
    @user.email = "hello"
    assert_not @user.valid?
  end

  test "blank password field should not be valid" do
    @user.password = " "
    assert_not @user.valid?
  end
end
