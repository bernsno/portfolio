require 'test_helper'

class WorkTest < ActiveSupport::TestCase
  should_validate_presence_of :title
  should_have_attached_file :image
  should_have_instance_methods :acts_as_list_class, :position_column, :scope_condition
  
  context "a set of works" do
    setup { @work_1 = Factory(:work), @work_2 = Factory(:work) }
    should "be ordered by position" do
      assert_equal [@work_1, @work_2], Work.all
    end
  end
end
