class CreateJoinTableUsersSeminars < ActiveRecord::Migration[5.1]
  def change
    create_join_table :users, :seminars do |t|
      # t.index [:user_id, :seminar_id]
      # t.index [:seminar_id, :user_id]
    end
  end
end
