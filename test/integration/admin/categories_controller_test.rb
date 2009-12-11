require File.dirname(__FILE__) + '/../../test_helper'

class Admin::WorksControllerTest < ActionController::IntegrationTest
  setup :create_user
  setup { login_as(@user) }


  context "creating a new category" do
    
    
  end

private

  def create_user
    @user = Factory(:user)
  end
end
