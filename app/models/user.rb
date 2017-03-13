class User < ActiveRecord::Base
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable

    has_many :educations
    has_many :contacts
    has_one :personal_info
    has_many :projects
    has_many :portfolios
    has_many :work_experiences
    has_many :quotes
    has_many :enquiries

    has_many :user_proficiency_skills
    accepts_nested_attributes_for :user_proficiency_skills, allow_destroy: true

    has_many :user_personal_skills
    accepts_nested_attributes_for :user_personal_skills, allow_destroy: true
    
    has_many :user_interests
    has_many :interests, through: :user_interests

    has_many :user_social_networks
    accepts_nested_attributes_for :user_social_networks, allow_destroy: true
end
