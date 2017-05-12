require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  	test "invalid signup information" do

    	get signup_path
    	assert_difference 'User.count', 1 do
      		post users_path, params: { user: { name:  "Example User",
                                         email: "user@example.com",
                                         password:              "password",
                                         password_confirmation: "password" } }
    	end
    	follow_redirect!
    	assert_template 'users/show'
    	assert_not flash.empty?
    	assert_equal("Welcome to the Sample App!", flash[:success])
    	# assert_select 'div#error_explanation'
    	# assert_select 'div.field_with_errors'
    end
    	
    
end