# == Schema Information
#
# Table name: plans
#
#  id          :integer          not null, primary key
#  name        :string
#  sort        :string
#  description :text
#  start_date  :datetime
#  end_date    :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Plan < ApplicationRecord

  #Relaciones, dependencias y validaciones

  has_many :planphyactivityrecords
  has_many :phyactivities, through: :planphyactivityrecords

  validates :name, presence: true, length:  {maximum: 150}
  validates :description, presence: true, length:  {maximum: 500}
  validates :sort, presence: true
  validates :start_date, presence: true, timeliness: {type: :datetime}
  validates :end_date, presence: true, timeliness: {type: :datetime}

  #Queries implementadas a través de scopes

  #consultar el id, nombre y descripción de los planes que contienen la/s palabra/s "category" en su campo sort
  scope :planType, ->(category) {Plan.where("sort LIKE ?","%#{category}").select("id,name,description").all.to_a}

  #consultar los n planes más próximos a llevarse a cabo por los usuarios
  scope :nearestPlans, ->(n){Plan.order(start_date: :asc).limit(n)}

end
