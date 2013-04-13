require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest

  test "user can sign up with only the required fields" do
    # Visit new user page
    visit '/'
    click_link 'Sign Up'
    assert_equal new_user_path, current_path

    # We are not signed in yet
    assert_nav_shows_signed_out

    # Fill the form with only required fields
    user = FactoryGirl.build :user
    fill_in 'user[full_name]', with: user.full_name
    fill_in 'user[email]', with: user.email
    
    password = "abc123"
    fill_in 'user[password]', with: password
    fill_in 'user[password_confirmation]', with: password

    click_button 'Create account'

    # Ensure signed in, redirected to root, with flash message
    assert_nav_shows_signed_in
    assert_equal root_path, current_path
    assert find('.alert').has_content?("Welcome")
  end

  def assert_nav_shows_signed_in
    assert find('.navbar').has_link?('Logout')
    assert find('.navbar').has_no_link?('Sign Up')
  end

  def assert_nav_shows_signed_out
    assert find('.navbar').has_no_link?('Logout')
    assert find('.navbar').has_link?('Sign Up')
  end

end
