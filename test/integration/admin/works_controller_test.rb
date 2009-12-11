require File.dirname(__FILE__) + '/../../test_helper'

class Admin::WorksControllerTest < ActionController::IntegrationTest

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
