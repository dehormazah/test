# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  bio        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User

  def self.create_user_for_google(data)
    where(uid: data["email"]).first_or_initialize.tap do |user|
      user.provider="google_oauth2"
      user.uid=data["email"]
      user.email=data["email"]
      user.password=Devise.friendly_token[0,20]
      user.password_confirmation=user.password
      user.save!
    end
  end


  #Relaciones, dependencias y validaciones

  has_one :history, dependent: :destroy
  has_one :picture, as: :imageable, dependent: :destroy

  has_many :comments, dependent: :destroy

  has_many :userachievementrecords
  has_many :achievements, through: :userachievementrecords

  has_many :userdietrecords
  has_many :diets, through: :userdietrecords

  has_many :userplanrecords
  has_many :plans, through: :userplanrecords

  has_many :usereventrecords
  has_many :events, through: :usereventrecords

  has_many :usergrouprecords
  has_many :groups, through: :usergrouprecords

  has_many :usertipdietrecords
  has_many :tipdiets, through: :usertipdietrecords

  has_many :usertipactivityrecords
  has_many :tipactivities, through: :usertipactivityrecords


  validates :name, presence: true #, length:  {maximum: 60}
  validates :email, presence: true #, uniqueness: true
  #validates_format_of :name, :with => /\A[a-zA-Z]+(?: [a-zA-Z]+)?\z/
  #validates_format_of :email, :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i


  #Queries implementadas a través de scopes

  #usuarios con nombres que empiezan con "start"
  scope :filterName, -> (start){User.where("name LIKE ?", "#{start}%").all.to_a}

  #usuarios que han sido creados en una fecha anterior a "time"
  scope :created_before, ->(time) {User.where("created_at < ?", time).all.to_a }

  #usuarios con un email cuyo dominio es "@yahoo.com"
  scope :yahooEmail, -> {User.where("email LIKE ?", "%yahoo.com").all.to_a}

  #seleccionar y consultar únicamente los campos "id","name" y "email" del total de usuarios existentes
  scope :selectNameEmail, -> {User.select("id, name, email").all.to_a}

  #filtrar únicamente el id y correo de los usuarios cuya edad (registrada en su historia) es mayor a 20
  scope :usersOlderThan20, -> {User.joins(:history).where('age > 20').pluck(:id, :email)}

  #filtrar el id y el email de los usuarios que han conseguido el logro con id = "id"
  scope :usersAchievement, -> (ach_id){User.joins(:userachievementrecords).where('achievement_id LIKE ?',ach_id).pluck(:id, :email)}


end
