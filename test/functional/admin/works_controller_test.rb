require File.dirname(__FILE__) + '/../../test_helper'

class Admin::WorksControllerTest < ActionController::TestCase
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
  
  context "new" do
    setup {get :new}
    should_assign_to :work
    should_respond_with :success
    should_render_template :new
    should_not_set_the_flash
  end
  
  context "POST to :create" do
    setup { post :create, :work => Factory.attributes_for(:work) }
    should_assign_to :work
    should_change 'Work.count', :by => 1
  end
    
  context "GET to :edit" do
    setup {get :edit, :id => @work.id}      
    should_assign_to :work
    should_respond_with :success
    should_render_template :edit
    should_not_set_the_flash
  end
    
  context "PUT to :update" do
    setup {put :update, :id => @work.id, :work => { :title => "Big Painting" }}
    should_redirect_to("admin work show page") {admin_work_path(assigns(:work))}
    should_assign_to :work
    should_set_the_flash_to /update/i
  end
    
  context "destroy" do
    setup {delete :destroy, :id => @work.id}
    should_assign_to :work
    should_redirect_to("admin works index") {admin_works_path}
    should_change 'Work.count', :by => -1
  end

  
  
  private
  
  def create_work
    @work = Factory(:work)
  end
end