# == Schema Information
#
# Table name: usereventrecords
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  event_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UsereventrecordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
