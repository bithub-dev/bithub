require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user requires email, password, password_confirmation, name" do 
    user = User.new
    refute user.save

    assert_include user.errors[:password], "can't be blank"
    assert_include user.errors[:email], "can't be blank"
    assert_include user.errors[:full_name], "can't be blank"
  end

end
