class PersonalSkill < ActiveRecord::Base
    has_many :user_personal_skills
    has_many :users, through: :user_personal_skills

    validates_presence_of :name

end
