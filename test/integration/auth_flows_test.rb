require 'test_helper'

class AuthFlowsTest < ActionDispatch::IntegrationTest

  test "invalid login shows errors" do
    visit login_path
    click_button 'Login'
    assert find('.alert-error').has_content?('try again')
  end
end
