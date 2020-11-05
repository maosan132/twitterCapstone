class FollowingsController < ApplicationController
  def create
    puts "this is the params #{params[:id]}"
    puts current_user.id
    
    followed = current_user.followeds.new(followed_id: params[:id], follower_id: current_user.id)
    flash[:error] = 'Error' unless followed.save!
    redirect_to request.referrer
  end


  def destroy 
    follow = Following.find(params[:id])
    follow.destroy
    redirect_to request.referrer
  end


end