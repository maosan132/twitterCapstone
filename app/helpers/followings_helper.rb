module FollowingsHelper
  def following?(user)
    !Following.where(follower_id: current_user.id, followed_id: user.id).empty?
  end

  def followed_by(user)
    User.followers(user)
  end
end