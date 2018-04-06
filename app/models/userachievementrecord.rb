# == Schema Information
#
# Table name: userachievementrecords
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  achievement_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Userachievementrecord < ApplicationRecord

  #Relaciones, dependencias y validaciones

  belongs_to :user
  belongs_to :achievement

  validates :user_id, presence: true
  validates :achievement_id, presence: true

  #Queries implementadas a través de scopes

  #consultar el nombre y correo de los usuarios que han conseguido al menos un logro
  scope :usersWithAchievements, -> {users_query = Userachievementrecord.includes(:user).distinct

  users_query.each do |user_query|
    puts user_query.user.name
    puts user_query.user.email
    puts "\n"
  end
  }


end
