class CreatePersonalSkills < ActiveRecord::Migration
  def change
    create_table :personal_skills do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
