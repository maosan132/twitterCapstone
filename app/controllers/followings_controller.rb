class FollowingsController < ApplicationController
  def create
    followed = current_user.followeds.new(followed_id: params[:id])
    if followed.save flash[:error] = 'Error' unless followed.save
    redirect_to request.referrer
  end

end