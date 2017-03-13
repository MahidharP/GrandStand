class ChangeColumnUserProficiencySkill < ActiveRecord::Migration
    def change
        remove_column :user_proficiency_skills, :proficiency_id
        add_column :user_proficiency_skills, :proficiency_skill_id, :integer
    end
end
