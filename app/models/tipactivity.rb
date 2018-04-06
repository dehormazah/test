# == Schema Information
#
# Table name: tipactivities
#
#  id          :integer          not null, primary key
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Tipactivity < ApplicationRecord

  #Relaciones, dependencias y validaciones

  has_many :usertipactivityrecords
  has_many :users, through: :usertipactivityrecords

  validates :description, presence: true , length:  {maximum: 500}

  #Queries implementadas a través de scopes

  #consultar los tips que se le han dado al usuario con id "user_id"
  scope :tipsForUser, ->(user_id) {Tipactivity.joins(:usertipactivityrecords).where("user_id LIKE ? ",user_id).pluck(:description)}

  #consultar el numero de tips que se le han dado a un usuario desde que empezó a usar la aplicación
  scope :totalTips, ->(user_id) {Tipactivity.joins(:usertipactivityrecords).where("user_id LIKE ?", user_id).count}

end
