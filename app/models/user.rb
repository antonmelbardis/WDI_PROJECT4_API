class User < ApplicationRecord
  has_secure_password
  belongs_to :country

  has_many :comments
  has_many :posts
  has_many :attendances
  has_many :seminars, through: :attendances

  has_and_belongs_to_many :seminars
  has_many :created_seminars, foreign_key: :created_by, class_name: "Seminar"

  validates :username, presence: true
  validates :email, uniqueness: true
end
