require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  should_have_many :works
end
