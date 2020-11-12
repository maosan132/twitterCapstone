class FollowingsController < ApplicationController
  def create
    puts "this is the params #{params[:id]}"
    puts current_user.id
    
    following = current_user.followeds.new(followed_id: params[:id], follower_id: current_user.id)
    
    flash[:error] = 'Error' unless following.save
    redirect_to request.referrer
  end


  def destroy 
    following = Following.find(params[:id])
    following.destroy
    redirect_to request.referrer
  end

  

end