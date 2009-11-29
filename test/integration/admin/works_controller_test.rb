require File.dirname(__FILE__) + '/../../test_helper'

class Admin::WorksControllerTest < ActionController::IntegrationTest
  context "a non-admin visiting admin section" do
    setup { visit new_admin_work_path }
    should "return to new user session path" do
      assert_equal login_url, current_url
    end
  end
  
  context "as a user" do
    setup { login_as(Factory(:user)) }
    context "adding a new work" do
      setup do
        visit new_admin_work_path
      end
      context "with invalid data" do
        setup do
          click_button "work_submit"
        end
        should_change "Work.count", :by => 0
      end
    end
  end
end
