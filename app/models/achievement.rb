# == Schema Information
#
# Table name: achievements
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  date        :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Achievement < ApplicationRecord

  #Relaciones, dependencias y validaciones

  has_many :userachievementrecords
  has_many :users, through: :userachievementrecords

  validates :name, presence: true#, length:  {maximum: 100}
  validates :description, presence: true#, length:  {maximum:400}
  validates :date, presence: true, timeliness: {type: :datetime}

  #Queries implementadas a través de scopes

  #Encontrar el nombre de los logros que ha completado el usuario con id = "user_id"
  scope :achievementsByUser, ->(user_id) {Achievement.joins(:userachievementrecords).where('user_id LIKE ?',user_id).pluck(:name)}


end
