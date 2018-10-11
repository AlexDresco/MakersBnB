require "application_system_test_case"

class WelcomeTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit '/welcome/index'
    assert_selector "h1", text: "Welcome to MakersBnB"
  end

  test "creating a new user" do
    visit '/welcome/index'
    click_on "Sign up"
    fill_in "Name", with: "Alex"
    fill_in "Password", with: "password123"
    fill_in "Email", with: "alex@bladiblah.com"
    click_on "Create User"
  end

  test "log in" do
    visit '/welcome/index'
    click_on "Log in"
    fill_in "Enter User Name", with: "Alex"
    fill_in "Enter Password", with: "password123"
    # click_on "Login" -- the welcome/welcome page isn't there yet.
  end

  test "view all properties when not logged any" do
    visit "/welcome/index"
    click_on "View all properties"
    assert_selector "h1", text: "View all properties"
  end

end
