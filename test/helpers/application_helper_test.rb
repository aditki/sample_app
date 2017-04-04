require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal final_title,         "Ruby on Rails Tutorial Sample App"
    assert_equal final_title("Help"), "Help | Ruby on Rails Tutorial Sample App"
  end
end