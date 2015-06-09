require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "valid signup information" do
  get login_path
  assert_difference 'User.count', 1 do
    post_via_redirect users_path, user: {
                                          firstName:"Ben",
                                          lastName:  "Nard",
                                          username: "bennard",
                                          password: "password"
                                         }
  end
  assert_template 'users/show'
  assert is_logged_in?
end
end