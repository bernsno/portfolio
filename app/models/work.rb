class Work < ActiveRecord::Base
  validates_presence_of :title
  has_attached_file :image, :styles => { :thumb => "380x380#" }, :default_style => :thumb
  validates_attachment_presence :image
  acts_as_list
  default_scope :order => 'position ASC'
end
