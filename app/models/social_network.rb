class SocialNetwork < ActiveRecord::Base
    has_many :user_social_networks

    accepts_nested_attributes_for :user_social_networks,
    reject_if: proc { |attributes| attributes['url'].blank? },
    allow_destroy: true
end
