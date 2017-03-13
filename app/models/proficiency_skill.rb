class ProficiencySkill < ActiveRecord::Base
    has_many :user_proficiency_skills
    # validates_presence_of :name



end
