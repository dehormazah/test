# == Schema Information
#
# Table name: userdietrecords
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  diet_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Userdietrecord < ApplicationRecord

  #Relaciones, dependencias y validaciones

  belongs_to :user
  belongs_to :diet

  validates :user_id, presence: true
  validates :diet_id, presence: true

  #Queries implementadas a través de scopes

  #consultar las dietas (id) que han sido asignadas a por lo menos un usuario
  scope :dietsAssigned, -> {diets_query = Userdietrecord.includes(:diet).distinct
  array = Array.new
  diets_query.each do |diet_query|
        array.push(diet_query.diet.id)
  end
  array = array.uniq.sort
  array.each do |item|
    puts item
    puts "\n"
  end
  }

end
