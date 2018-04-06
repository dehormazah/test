# == Schema Information
#
# Table name: usergrouprecords
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  group_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Usergrouprecord < ApplicationRecord

  #Relaciones, dependencias y validaciones
  
  belongs_to :user
  belongs_to :group

  validates :diet_id, presence: true
  validates :food_id, presence: true
end
