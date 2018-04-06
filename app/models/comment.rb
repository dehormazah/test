# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  description :text
#  date        :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Comment < ApplicationRecord

  #Relaciones, dependencias y validaciones

  validates :description, presence: true , length:  {maximum: 500}
  validates :date, presence: true, timeliness: {type: :datetime}
  validates :user_id, presence: true

  #Queries implementadas a través de scopes

  #consultar los comentarios y el id del usuario que los realizó entre dos fechas(datetime) específicas
  scope :commentsBetweenDates, ->(start_date, end_date) {Comment.where("created_at >= ? AND created_at <= ?", start_date, end_date).pluck(:description, :user_id)}

  #consultar los comentarios que contengan en alguna parte la cadena "key_word"
  scope :searchTerm, -> (key_word){Comment.where("description LIKE ?", "%#{key_word}%").pluck(:description)}

end
