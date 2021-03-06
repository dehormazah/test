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

class Usereventrecord < ApplicationRecord

  #Relaciones, dependencias y validaciones

  belongs_to :user
  belongs_to :event

  validates :user_id, presence: true
  validates :event_id, presence: true




end
