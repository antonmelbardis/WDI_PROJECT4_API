class AttendanceSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :seminar_id
end
