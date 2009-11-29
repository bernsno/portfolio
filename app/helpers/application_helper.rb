module ApplicationHelper
  
  def body_class
    controller.controller_path.gsub(/\//,'-').downcase
  end
  
end
