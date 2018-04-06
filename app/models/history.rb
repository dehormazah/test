# == Schema Information
#
# Table name: histories
#
#  id               :integer          not null, primary key
#  description      :text
#  genre            :string
#  birth_date       :date
#  age              :integer
#  weight           :integer
#  height           :integer
#  start            :datetime
#  num_achievements :integer
#  num_diets        :integer
#  num_plans        :integer
#  num_groups       :integer
#  num_events       :integer
#  level            :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :integer
#

class History < ApplicationRecord

  #Relaciones, dependencias y validaciones

  belongs_to :user

  validates :description, presence: true, length:  {maximum: 500}
  validates :genre, presence: true
  validates :birth_date, presence: true, timeliness: {type: :date}
  validates :age, presence: true, numericality: { only_integer: true }
  validates :weight, presence: true, numericality: { only_integer: true }
  validates :height, presence: true, numericality: { only_integer: true }
  validates :start, presence: true, timeliness: {type: :datetime}
  validates :num_achievements, presence: true
  validates :num_events, presence: true
  validates :num_diets, presence: true
  validates :num_groups, presence: true
  validates :num_plans, presence: true
  validates :level, presence: true
  validates :user_id, presence: true
  # validates_format_of :start, :with => /\d{2}\/\d{2}\/\d{4}/, :message => "^La fecha debe seguir el siguiente formato: dd/mm/aaaa"
  # validates_format_of :current_time, :with => /\d{2}\/\d{2}\/\d{4}/, :message => "^La fecha debe seguir el siguiente formato: dd/mm/aaaa"

  #Queries implementadas a través de scopes

  #conocer el número de usuarios de cada edad que usan la aplicación
  scope :usersByAge, -> {History.group(:age).count}

  #conocer el numero de usuarios por genero que usan la aplicacion
  scope :usersByGenre, -> {History.group(:genre).count}

  #conocer el id y la edad de los usuarios que han hecho mas de 5 dietas
  scope :moreThan5Diets, -> { where('num_diets > 5').select("user_id,age").all.to_a }

  #conocer el id de los usuarios que han hecho más de 8 dietas y planes físicos y han conseguido más de 5 logros
  scope :fitnessUsers, -> {where('num_diets > 8 AND num_plans > 8 AND num_achievements >5').pluck(:user_id)}

  #seleccionar el id, el peso y el género de usuarios con una edad menor a 20 años
  scope :selectAgeGenre, -> {where('age < 20').select("user_id,weight, genre").all.to_a}


end
