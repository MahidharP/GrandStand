class UserProficiencySkill < ActiveRecord::Base
    belongs_to :user
    belongs_to :proficiency_skill
end
