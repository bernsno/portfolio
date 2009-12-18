class Work < ActiveRecord::Base
  validates_presence_of :title
  has_attached_file :image, :styles => { :small => "20x20#", :thumb => "380x380#" }, :default_style => :thumb
  validates_attachment_presence :image
  sortable :scope => :category_id
  
  default_scope :order => 'position ASC'
  belongs_to :category
  
  def self.order(ids)
    update_all(['position = FIND_IN_SET(id, ?)', ids.join(',')], { :id => ids })
  end
end
