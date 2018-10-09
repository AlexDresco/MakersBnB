require 'test_helper'

class MakersBnbTest < Capybara::Rails::TestCase

  test 'get index' do
    visit index
    assert page.has_content?('Welcome to MakersBnB')
    click_on 'Log in'

  end

end
