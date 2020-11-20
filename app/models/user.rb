class User < ApplicationRecord
  has_one_attached :photo
  has_one_attached :coverimage

  # Will return an array of follows for the given user instance
  # has_many :received_follows, foreign_key: :followedid, class_name: 'Following'
  # Will return an array of users who follow the user instance
  has_many :followers, class_name: 'Following', foreign_key: 'follower_id'
  has_many :current_followers, through: :followers, source: 'followed'

  has_many :followeds, class_name: 'Following', foreign_key: 'followed_id'
  has_many :current_followeds, through: :followeds, source: 'follower'

  # Will return an array of opinions the given user instance has made
  has_many :tastes, dependent: :destroy

  scope :unfollowed, ->(list) { where.not(id: list) }
  scope :followed, ->(list) { where(id: list) }

  scope :not_current_user, ->(current) { where.not(id: current.id) }

  validates :username, uniqueness: true, presence: true, length: { maximum: 15 }
  validates :fullname, presence: true, length: { maximum: 40 }
end
