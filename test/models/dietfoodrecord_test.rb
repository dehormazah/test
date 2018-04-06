# == Schema Information
#
# Table name: dietfoodrecords
#
#  id         :integer          not null, primary key
#  diet_id    :integer
#  food_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class DietfoodrecordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
