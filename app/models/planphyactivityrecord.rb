# == Schema Information
#
# Table name: planphyactivityrecords
#
#  id             :integer          not null, primary key
#  plan_id        :integer
#  phyactivity_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Planphyactivityrecord < ApplicationRecord

  #Relaciones, dependencias y validaciones

  belongs_to :plan
  belongs_to :phyactivity

  validates :plan_id, presence: true
  validates :phyactivity_id, presence: true

  #Queries implementadas a través de scopes

  #consultar el nombre de las actividades físicas incluidas entre los 10 planes más recientemente creados (solución al problema de las N+1 queries)
  scope :phyActivsPerPlan, -> {recent_plans = Planphyactivityrecord.includes(:phyactivity).order(created_at: :desc).limit(10)
  recent_plans.each do |recent_plan|
    puts recent_plan.phyactivity.name
  end}



end
