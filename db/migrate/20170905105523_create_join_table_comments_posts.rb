class CreateJoinTableCommentsPosts < ActiveRecord::Migration[5.1]
  def change
    create_join_table :comments, :posts do |t|
      # t.index [:comment_id, :post_id]
      # t.index [:post_id, :comment_id]
    end
  end
end
