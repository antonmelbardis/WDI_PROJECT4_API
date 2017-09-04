class SeminarSerializer < ActiveModel::Serializer
  attributes :id, :seminar_name, :location_address, :description, :date, :country_id, :user_ids, :teaching_module_id, :created_by

  belongs_to :creator, foreign_key: :created_by, class_name: "User"
  has_many :users

  has_one :teaching_module
  has_one :country
end
