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

class Phyactivity < ApplicationRecord

  #Relaciones, dependencias y validaciones

  has_many :planphyactivityrecords
  has_many :plans, through: :planphyactivityrecords

  has_many :placephyactivityrecords
  has_many :places, through: :placephyactivityrecords

  has_many :pictures, as: :imageable, dependent: :destroy

  validates :name, presence: true, length:  {maximum: 50}
  validates :description, presence: true, length:  {maximum: 500}
  validates :duration, presence: true
  validates :required_elements, presence: true , length:  {maximum: 300}

  #Queries implementadas a través de scopes

  #encontrar la duración total de todas las actividades físicas propuestas dentro de un plan específico
  scope :totalDuration, -> (plan){Phyactivity.joins(:planphyactivityrecords).where("plan_id LIKE ?",plan).sum(:duration)}

  #encontrar todas las actividades físicas que requieren para su desarrollo el elemento "tool"
  scope :toolRequired, ->(tool){Phyactivity.where("required_elements LIKE ?","%#{tool}%").select("id, name").all.to_a}

end
