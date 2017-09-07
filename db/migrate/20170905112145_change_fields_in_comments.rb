class ChangeFieldsInComments < ActiveRecord::Migration[5.1]
  def change
    rename_column :comments, :seminar_id, :post_id
    rename_column :comments, :body_comment, :body
    rename_column :comments, :title_comment, :title
  end
end
