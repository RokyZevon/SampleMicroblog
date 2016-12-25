require 'test_helper'

class UsersEditTest < ActionDispatch::IntegrationTest

  def setup
    @user = users( :test )
  end

  test "unsuccessful edit" do
    log_in_as( @user )
    get edit_user_path( @user )
    assert_template 'users/edit'
    patch user_path( @user ), params: { user: { name:     "",
                                                email:    "t@t",
                                                password: "131" ,
                                                password_confirmation: "410"
    }}

    assert_template 'users/edit'
  end

  #test "successful edit" do
    #log_in_as( @user )
    #get edit_user_path( @user )
    #assert_template 'users/edit'
  test "successful edit with friendly forwarding" do
    get edit_user_path( @user )
    log_in_as( @user )
    assert_redirected_to edit_user_path( @user )
    name  = "Test"
    email = "test@test.test"
    patch user_path( @user ), params: { user: { name:     name,
                                                email:    email,
                                                password: "",
                                                password_confirmation:
                                                          "" } }
    assert_not flash.empty?
    assert_redirected_to @user
    @user.reload
    assert_equal name,  @user.name
    assert_equal email, @user.email
  end

end
