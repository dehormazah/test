# == Schema Information
#
# Table name: foods
#
#  id           :integer          not null, primary key
#  name         :string
#  sort         :string
#  description  :string
#  averageprice :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Food < ApplicationRecord

  #Relaciones, dependencias y validaciones

  has_many :dietfoodrecords
  has_many :diets, through: :dietfoodrecords

  has_many :pictures, as: :imageable, dependent: :destroy

  validates :description, presence: true, length:  {maximum: 200}
  validates :sort, presence: true
  validates :name, presence: true , length:  {maximum: 30}
  validates :averageprice, presence: true, numericality: { only_integer: true }

  #Queries implementadas a través de scopes

  #consultar las comidas por nombre y tipo únicamente
  scope :foodNameSort, -> {Food.select("name,sort").all.to_a}

  #consultar el precio promedio de una comida sugerida por la aplicación
  scope :averageFood, -> {Food.sum("averageprice")}

  #filtar el id de la comida, su nombre y su precio promedio de las comidas que cuesten menos de $6000
  scope :priceLess6000, -> {Food.where("averageprice < 6000").pluck(:id, :name, :averageprice)}

end
