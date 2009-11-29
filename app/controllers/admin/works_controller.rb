class Admin::WorksController < Admin::AdminController
  
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
    respond_to do |format|
      if @work.save
        flash[:notice] = "Author created."
        format.html { redirect_to admin_works_path }
      else
        format.html { render :action => "new" }
      end
    end
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