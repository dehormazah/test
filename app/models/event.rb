# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  start_date  :datetime
#  end_date    :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ApplicationRecord

  #Relaciones, dependencias y validaciones

  has_many :usereventrecords
  has_many :users, through: :usereventrecords

  has_many :eventplacerecords
  has_many :places, through: :eventplacerecords

  has_one :picture, as: :imageable, dependent: :destroy

  validates :name, presence: true,length:   {maximum: 50}
  validates :description, presence: true, length:   {maximum: 500}
  validates :start_date, presence: true, timeliness: {type: :datetime}
  validates :end_date, presence: true, timeliness: {type: :datetime}

  #Queries implementadas a través de scopes

  #encontrar los eventos (nombre,descripción y fecha de inicio) cuyo nombre contenga la/s palabra/s descrita/s por "word"
  scope :eventType, ->(word){Event.where("name LIKE ?","%#{word}%").select("name,description,start_date").all.to_a}

  #encontrar los eventos (id, nombre y fecha de inicio) que se van a realizar en el lugar cuyo nombre es igual a "name"
  scope :eventsInPlace, ->(name) {Event.joins(:eventplacerecords).joins(:places).where('places.name LIKE ?',name).distinct.pluck(:id, :name, :start_date)}

end
