class Following < ApplicationRecord
    # The user giving the follow
    belongs_to :follower, foreign_key: :follower_id, class_name: 'User'

    # The user being followed
    belongs_to :followed, foreign_key: :followed_id, class_name: 'User'

    validates :follower_id, :followed_id, presence: true
    validate  :not_duplicate 


    def not_duplicate
        duplicated = Following.where(follower_id: follower_id, followed_id: followed_id)
        unless duplicated.length.zero?
          errors.add(:followed_id, 'Can\'t follow a user that is already followed')
        end
    end
end
