class Admin::WorksController < Admin::AdminController
  
  rescue_from ActiveRecord::RecordInvalid do |exception|
    render :action => exception.record.new_record? ? "new" : "edit"
  end
  
  def index
    @works = Work.all
  end
  
  def show
    @work = Work.find(params[:id])
  end
    
  def edit
    @work = Work.find(params[:id])
  end
  
  def new
    @work = Work.new
  end
  
  def create
    @work = Work.new(params[:work])
    @work.save!
    flash[:notice] = "Work Created"
    redirect_to admin_work_path(@work)
  end
  
  def update
    @work = Work.find(params[:id])
    @work.update_attributes!(params[:work])
    flash[:notice] = "Work Updated"
    redirect_to admin_work_path(@work)
  end
  
  def destroy
    @work = Work.find(params[:id])
    @work.destroy
    redirect_to admin_works_path
  end
  
end