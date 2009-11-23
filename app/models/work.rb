class Work < ActiveRecord::Base
  validates_presence_of :title
  has_attached_file :image
  acts_as_list
  default_scope :order => 'position ASC'
end
