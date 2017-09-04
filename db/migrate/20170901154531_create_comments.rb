class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :body_comment
      t.text :title_comment
      t.integer :post_id
      t.integer :user_id
      t.integer :seminar_id

      t.timestamps
    end
  end
end
