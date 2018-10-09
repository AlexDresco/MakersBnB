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
  
end
