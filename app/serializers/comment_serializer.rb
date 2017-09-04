class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body_comment, :title_comment, :post_id, :user_id, :seminar_id
end
