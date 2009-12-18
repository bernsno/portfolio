class Admin::AdminController < ResourceController::Base
  before_filter :require_user
  layout 'admin'
end