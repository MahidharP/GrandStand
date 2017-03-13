class PersonalInfo < ActiveRecord::Base
    belongs_to :user

    validates :profile, presence: true
    validates :designation, presence: true
    validates :image, presence: true
    validates :birthday, presence: true
    validates :nationality, presence: true
    validates :language, presence: true
    mount_uploader :image, CoverUploader
end
