class Following < ApplicationRecord
    # The user giving the follow
    belongs_to :follower, foreign_key: :follower_id, class_name: 'User'

    # The user being followed
    belongs_to :followed, foreign_key: :followed_id, class_name: 'User'

    validates :follower_id, :followed_id, presence: true
end
