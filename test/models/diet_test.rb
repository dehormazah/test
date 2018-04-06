# == Schema Information
#
# Table name: diets
#
#  id         :integer          not null, primary key
#  name       :string
#  sort       :text
#  start_date :datetime
#  end_date   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class DietTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
