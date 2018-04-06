# == Schema Information
#
# Table name: histories
#
#  id               :integer          not null, primary key
#  description      :text
#  genre            :string
#  birth_date       :date
#  age              :integer
#  weight           :integer
#  height           :integer
#  start            :datetime
#  num_achievements :integer
#  num_diets        :integer
#  num_plans        :integer
#  num_groups       :integer
#  num_events       :integer
#  level            :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :integer
#

require 'test_helper'

class HistoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
