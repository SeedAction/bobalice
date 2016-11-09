require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
	test "full title helper" do
		assert_equal full_title, "Bobalice"
		assert_equal full_title("Help"), "Help | Bobalice"
	end
end