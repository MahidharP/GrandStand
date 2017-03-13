class Project < ActiveRecord::Base
    belongs_to :user

    validates_presence_of :name
    validates_presence_of :description
    validates_presence_of :url
    validates_presence_of :start_date
    validates_presence_of :end_date
end
