# == Schema Information
#
# Table name: placephyactivityrecords
#
#  id             :integer          not null, primary key
#  place_id       :integer
#  phyactivity_id :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Placephyactivityrecord < ApplicationRecord

  #Relaciones, dependencias y validaciones

  belongs_to :place
  belongs_to :phyactivity

  validates :place_id, presence: true
  validates :phyactivity_id, presence: true

  #Queries implementadas a través de scopes
  #consultar el nombre de las actividades físicas que se desarrollan en los primeros 10 lugares registrados en la table join de lugares y actividades físicas
  scope :phyActivsInPlaces, -> {first_places = Placephyactivityrecord.includes(:phyactivity).limit(10)
  first_places.each do |first_place|
    puts first_place.phyactivity.name
    puts "\n"
  end}


end
