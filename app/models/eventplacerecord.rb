# == Schema Information
#
# Table name: eventplacerecords
#
#  id         :integer          not null, primary key
#  event_id   :integer
#  place_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Eventplacerecord < ApplicationRecord

  #Relaciones, dependencias y validaciones

  belongs_to :event
  belongs_to :place

  validates :event_id, presence: true
  validates :place_id, presence: true

end
