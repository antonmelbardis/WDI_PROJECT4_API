class CommentSerializer < ActiveModel::Serializer
  attributes :id, :body, :post_id, :user, :created_at

end
