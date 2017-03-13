class UserPersonalSkill < ActiveRecord::Base
    belongs_to :user
    belongs_to :personal_skill
end
