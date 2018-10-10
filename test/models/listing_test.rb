require 'test_helper'

class ListingTest < ActiveSupport::TestCase
  def setup
    @listing = Listing.new(property_name: "Big house", description: "Nice bedrooms", price: 100, start_date:"2018-10-15")
  end


  test "should be an instance of a user" do
    assert @listing.valid?
  end

  test "should not create a new listing without a name" do
    listing2 = Listing.create(description: "Nice bedrooms", price: 100, start_date:"2018-10-15")
    assert_not listing2.valid?
  end

  test "should not create a new listing without a description" do
    listing2 = Listing.create(property_name: "Big house", price: 100, start_date:"2018-10-15")
    assert_not listing2.valid?
  end

  test "should not create a new listing without a price" do
    listing2 = Listing.create(property_name: "Big house", description: "Nice bedrooms", start_date:"2018-10-15")
    assert_not listing2.valid?
  end

  test "should not create a new listing without a date" do
    @listing.start_date = ''
    assert_not @listing.valid?
  end

  test "the price should be a number" do
    @listing.price = "notanumber"
    assert_not @listing.valid?
  end

  test "the date should follow a date format" do
    @listing.start_date = '12345'
    assert_not @listing.valid?
  end

end
