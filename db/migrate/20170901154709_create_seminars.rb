class CreateSeminars < ActiveRecord::Migration[5.1]
  def change
    create_table :seminars do |t|
      t.text :seminar_name
      t.text :location_address
      t.text :description
      t.string :date
      t.integer :country_id
      t.integer :user_id
      t.integer :teaching_module_id

      t.timestamps
    end
  end
end
