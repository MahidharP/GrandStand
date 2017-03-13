class Education < ActiveRecord::Base
    belongs_to :user
    validates :name, presence: true
    validates :college, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true

    mount_uploader :document_path, CoverUploader
end
