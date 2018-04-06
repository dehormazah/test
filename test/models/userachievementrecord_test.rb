# == Schema Information
#
# Table name: userachievementrecords
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  achievement_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class UserachievementrecordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
