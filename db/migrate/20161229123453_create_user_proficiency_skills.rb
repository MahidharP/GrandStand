class CreateUserProficiencySkills < ActiveRecord::Migration
  def change
    create_table :user_proficiency_skills do |t|
      t.integer :proficiency_id
      t.integer :user_id
      t.string :value

      t.timestamps null: false
    end
  end
end
