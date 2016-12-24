require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest

  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: { name: "",
                                         email: "user@invalid",
                                         password: "131",
                                         password_confirmation: "410" } }
    end
    assert_template 'users/new'
  end

  test "valid signup information" do
    get signup_path
    assert_difference 'User.count' do
      post users_path, params: { user: { name: "Test",
                                         email: "test@test.test",
                                         password: "131410",
                                         password_confirmation: "131410" } }
    end
    follow_redirect!
    assert_template 'users/show'
  end

end
