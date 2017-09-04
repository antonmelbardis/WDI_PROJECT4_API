class Seminar < ApplicationRecord
  belongs_to :teaching_module
  has_many :attendances
  # has_many :users, through: :attendances
  belongs_to :country
  has_many :comments
  belongs_to :creator, foreign_key: :created_by, class_name: "User"
  has_and_belongs_to_many :users
end
