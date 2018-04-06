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

class Dietfoodrecord < ApplicationRecord

  #Relaciones, dependencias y validaciones

  belongs_to :diet
  belongs_to :food

  validates :diet_id, presence: true
  validates :food_id, presence: true

end
