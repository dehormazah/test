# == Schema Information
#
# Table name: usertipactivityrecords
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  tipactivity_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Usertipactivityrecord < ApplicationRecord

  #Relaciones, dependencias y validaciones
  
  belongs_to :user
  belongs_to :tipactivity

  validates :diet_id, presence: true
  validates :food_id, presence: true
end
