# == Schema Information
#
# Table name: groups
#
#  id          :integer          not null, primary key
#  name        :string
#  sort        :string
#  description :text
#  num_members :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Group < ApplicationRecord

  #Relaciones, dependencias y validaciones

  has_many :usergrouprecords
  has_many :users, through: :usergrouprecords

  has_one :picture, as: :imageable, dependent: :destroy

  validates :name, presence: true, length:  {maximum: 50}
  validates :sort, presence: true
  validates :description, presence: true , length:  {maximum: 500}
  validates :num_members, presence: true

  #Queries implementadas a través de scopes

  #consultar los grupos (id, nombre y categoría) ordenados según su categoría en orden alfabético creciente
  scope :groupCategory, -> {Group.order(sort: :asc).pluck(:id,:name,:sort)}

  #consultar el número de grupos por cantidad de miembros que se han formado
  scope :numMembers, ->{Group.group(:num_members).count}

  #consultar el id y nombre de los grupos en que está el usuario con el correo "email"
  scope :groupsUserX, ->(email) {Group.joins(:usergrouprecords).joins(:users).where("email LIKE ?",email).distinct.pluck(:id, :name)}  


end
