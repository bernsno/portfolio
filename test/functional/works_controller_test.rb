require File.dirname(__FILE__) + '/../test_helper'

class WorksControllerTest < ActionController::TestCase
  setup :create_work
  
  context "GET to :index" do
    setup { get :index }
    should_assign_to :works
    should_render_template :index
    should_respond_with :success
  end
  
  
  context "GET to :show" do
    setup { get :show, :id => @work.id }
    should_assign_to :work
    should_respond_with :success
    should_render_template :show
  end
  
  private
  
  def create_work
    @work = Factory(:work)
  end
end