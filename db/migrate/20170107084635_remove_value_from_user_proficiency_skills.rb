class RemoveValueFromUserProficiencySkills < ActiveRecord::Migration
  def change
    remove_column :user_proficiency_skills, :value
    add_column :user_proficiency_skills, :value, :integer
  end
end
