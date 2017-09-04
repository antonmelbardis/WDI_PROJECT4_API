class AddCreatedByToSeminars < ActiveRecord::Migration[5.1]
  def change
    add_column :seminars, :created_by, :integer
  end
end
