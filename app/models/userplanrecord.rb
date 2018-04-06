# == Schema Information
#
# Table name: userplanrecords
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  plan_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Userplanrecord < ApplicationRecord

  #Relaciones, dependencias y validaciones
  
  belongs_to :user
  belongs_to :plan

  validates :diet_id, presence: true
  validates :food_id, presence: true
end
