class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.text :email
      t.string :password
      t.string :password_confirmation
      t.string :phone_number
      t.text :bio
      t.text :photo
      t.integer :country_id
      t.string :username

      t.timestamps
    end
  end
end
