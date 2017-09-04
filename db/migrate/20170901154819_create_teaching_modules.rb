class CreateTeachingModules < ActiveRecord::Migration[5.1]
  def change
    create_table :teaching_modules do |t|
      t.text :teaching_module_title
      t.text :teaching_module_description

      t.timestamps
    end
  end
end
