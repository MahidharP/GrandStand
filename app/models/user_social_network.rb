class UserSocialNetwork < ActiveRecord::Base
    belongs_to :user
    belongs_to :social_network
end
