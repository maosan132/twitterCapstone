class Following < ApplicationRecord
    # The user giving the follow
    belongs_to :follower, foreign_key: :followerid, class_name: "User"

    # The user being followed
    belongs_to :followed_user, foreign_key: :followedid, class_name: "User"
end
