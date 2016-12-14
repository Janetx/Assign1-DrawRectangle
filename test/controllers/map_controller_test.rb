require 'test_helper'

class MapControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should get home" do
  	get :home
  	assert_response:success
  end

  test "should get help" do
  	get :help
  	assert_response:success
  end
  
end
