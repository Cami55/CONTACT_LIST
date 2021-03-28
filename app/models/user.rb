class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :employees

  validates :email, presence: true, uniqueness: true
  validates :forename, presence: true
  validates :surname, presence: true

  def fullname
    forename.capitalize + " " + surname.capitalize + " | " + role
  end
end
