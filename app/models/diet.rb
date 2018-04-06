# == Schema Information
#
# Table name: diets
#
#  id         :integer          not null, primary key
#  name       :string
#  sort       :text
#  start_date :datetime
#  end_date   :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Diet < ApplicationRecord

  #Relaciones, dependencias y validaciones

  has_many :userdietrecords
  has_many :users, through: :userdietrecords

  has_many :dietfoodrecords
  has_many :foods, through: :dietfoodrecords

  validates :name, presence: true , length:  {maximum: 50}
  validates :sort, presence: true , length:  {maximum: 300}
  validates :start_date, presence: true , timeliness: {type: :datetime}
  validates :end_date, presence: true, timeliness: {type: :datetime}

  #Queries implementadas a través de scopes

  #filtrar las dietas (id y nombre) cuyo objetivo (sort) contenga la/s palabra/s descritas en "key"
  scope :dietSort, -> (key){Diet.where("sort LIKE ?", "%#{key}%").pluck(:id,:name)}

  #filtrar el nombre y el objetivo de las dietas que contengan la comida con id = "foodID"
  scope :dietsContainsFood, -> (foodID){Diet.joins(:dietfoodrecords).where('food_id LIKE ?',foodID).select("name, sort").all.to_a}


end
