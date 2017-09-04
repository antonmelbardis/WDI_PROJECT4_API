class Country < ApplicationRecord
  has_many :seminars
  has_many :users
end
