class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :name, :surname, :photo
  has_one :country
  has_many :seminars
end
