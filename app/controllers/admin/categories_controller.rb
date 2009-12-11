class Admin::CategoriesController < Admin::AdminController
  create.wants.html { redirect_to admin_categories_path }
  update.wants.html { redirect_to admin_categories_path }
end