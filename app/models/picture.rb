# == Schema Information
#
# Table name: pictures
#
#  id             :integer          not null, primary key
#  name           :string
#  imageable_type :string
#  imageable_id   :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Picture < ApplicationRecord
  belongs_to :imageable, polymorphic: true
  validates :name, presence: true
end
