class CreateUserPersonalSkills < ActiveRecord::Migration
  def change
    create_table :user_personal_skills do |t|
      t.integer :personal_skill_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
