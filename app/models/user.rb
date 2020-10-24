class User < ApplicationRecord
    # Will return an array of follows for the given user instance
    # has_many :received_follows, foreign_key: :followedid, class_name: 'Following'
    # Will return an array of users who follow the user instance
    has_many :followers, class_name: 'Following', foreign_key: 'follower_id'
    has_many :current_followers, through: :followers

    has_many :followeds, class_name: 'Following', foreign_key: 'followed_id'
    has_many :current_followeds, through: :followeds    
  
    # Will return an array of opinions the given user instance has made
    has_many :tastes, dependent: :destroy
end
