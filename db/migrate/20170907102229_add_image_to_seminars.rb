class AddImageToSeminars < ActiveRecord::Migration[5.1]
  def change
    add_column :seminars, :image, :text
  end
end
