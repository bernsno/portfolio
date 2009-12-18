class Work < ActiveRecord::Base
  validates_presence_of :title
  has_attached_file :image, :styles => { :small => "20x20#", :thumb => "380x380#" }, :default_style => :thumb
  validates_attachment_presence :image
  acts_as_list
  default_scope :order => 'position ASC'
  belongs_to :category
end
