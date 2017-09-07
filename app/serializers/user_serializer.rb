class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :name, :surname, :photo, :bio, :phone_number
  has_one :country
  has_many :seminars
  has_many :posts
end
