require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
	test "layout links" do
		get root_path
		assert_template 'static_pages/home'

		assert_template partial: '_shim', count: 1
		assert_template partial: '_header', count: 1
		assert_template partial: '_footer', count: 1

		assert_select "a[href=?]", root_path, count: 2
		assert_select "a[href=?]", help_path
		assert_select "a[href=?]", about_path
		assert_select "a[href=?]", contact_path

		get signup_path
		assert_template 'users/new'
		assert_select "title", full_title("Sign up")
	end
end
