class CreateProficiencySkills < ActiveRecord::Migration
  def change
    create_table :proficiency_skills do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
