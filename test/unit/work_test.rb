require 'test_helper'

class WorkTest < ActiveSupport::TestCase
  should_validate_presence_of :title
  should_have_attached_file :image
  should_have_instance_methods :acts_as_list_class, :position_column, :scope_condition
  should_belong_to :category
end
