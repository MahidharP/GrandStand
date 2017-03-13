class Contact < ActiveRecord::Base
    belongs_to :user

    validates_presence_of :mobile
    validates_presence_of :email
    validates_presence_of :website
    validates_presence_of :address
end
