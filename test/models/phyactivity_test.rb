# == Schema Information
#
# Table name: phyactivities
#
#  id                :integer          not null, primary key
#  name              :string
#  description       :text
#  duration          :string
#  required_elements :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class PhyactivityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
