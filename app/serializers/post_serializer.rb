class PostSerializer < ActiveModel::Serializer
  attributes :id, :body_post, :title_post, :user_id
end
