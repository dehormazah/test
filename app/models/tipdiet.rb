# == Schema Information
#
# Table name: tipdiets
#
#  id          :integer          not null, primary key
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Tipdiet < ApplicationRecord
  has_many :usertipdietrecords
  has_many :users, through: :usertipdietrecords

  validates :description, presence: true , length:  {maximum: 500}

  #consultar los tips que se le han dado al usuario con id "user_id"
  scope :tipsForUser, ->(user_id) {Tipdiet.joins(:usertipdietrecords).where("user_id LIKE ? ",user_id).pluck(:description)}

  #consultar el numero de tips que se le han dado a un usuario desde que empezó a usar la aplicación
  scope :totalTips, ->(user_id) {Tipdiet.joins(:usertipdietrecords).where("user_id LIKE ?", user_id).count}


end
