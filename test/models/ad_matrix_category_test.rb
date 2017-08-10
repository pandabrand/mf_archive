require 'test_helper'

class AdMatrixCategoryTest < ActiveSupport::TestCase
  # should have_many(:templates)
  # should belong_to(:parent_category)
  should belong_to(:latest_template)
end
