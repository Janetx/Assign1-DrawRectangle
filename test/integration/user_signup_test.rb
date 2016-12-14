require 'test_helper'

class UserSignupTest < ActionDispatch::IntegrationTest
  
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, user: { name:  "",
                               email: "user@invalid",
                               password:              "foo",
                               password_confirmation: "bar" }
    end
    assert_template 'users/new'
  end

  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post_via_redirect users_path, user: { name:  "janet",
                                            email: "janetxuan@foxmail.com",
                                            password:              "1238731618",
                                            password_confirmation: "1238731618" }
    end
    assert_template 'users/show'
    assert is_logged_in?
  end

end
