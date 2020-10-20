class User < ApplicationRecord
    # Will return an array of follows for the given user instance
    has_many :received_follows, foreign_key: :followedid, class_name: "Following"

    # Will return an array of users who follow the user instance
    has_many :followers, through: :received_follows, source: :follower
  
    # Will return an array of opinions the given user instance has made
    has_many :tastes
end
