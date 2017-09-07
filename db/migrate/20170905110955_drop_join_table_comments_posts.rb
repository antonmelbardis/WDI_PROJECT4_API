class DropJoinTableCommentsPosts < ActiveRecord::Migration[5.1]
  def change
    drop_join_table :comments, :posts
  end
end
