# == Schema Information
#
# Table name: places
#
#  id         :integer          not null, primary key
#  name       :string
#  location   :string
#  latitude   :float
#  longitude  :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Place < ApplicationRecord

  #Relaciones, dependencias y validaciones

  has_one :picture, as: :imageable, dependent: :destroy

  has_many :eventplacerecords
  has_many :events, through: :eventplacerecords

  has_many :placephyactivityrecords
  has_many :phyactivities, through: :placephyactivityrecords

  validates :name, presence: true, length:  {maximum: 75}
  validates :location, presence: true, length:  {maximum: 100}
  validates :latitude, presence: true, numericality: { greater_than_or_equal_to:  -90, less_than_or_equal_to:  90 }
  validates :longitude, presence: true, numericality: { greater_than_or_equal_to: -180, less_than_or_equal_to: 180 }

  #Queries implementadas a través de scopes

  #encontrar los lugares (id,nombre y ubicación) que contengan en su nombre la palabra "name"
  scope :findByName, ->(name){Place.where("name LIKE ?", "%#{name}%").pluck(:id,:name,:location)}

  #consultar únicamente la latitud y longitud de los lugares de la base de datos de la aplicación
  scope :coordinates, -> {Place.pluck(:latitude,:longitude)}

  #consultar la latitud y longitud de un lugar especificado por su id
  scope :location, -> (id){Place.where("id LIKE ?", id).pluck(:latitude,:longitude)}

end
