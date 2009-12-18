class Admin::WorksController < Admin::AdminController
  
  def sort
    Work.order(params[:work])
    render :nothing => true
  end
end