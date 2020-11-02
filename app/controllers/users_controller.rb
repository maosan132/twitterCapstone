class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params_user)
    if @user.save
      flash[:success] = 'Successfully signed up!'
      log_in @user
      redirect_to root_path
    else
      flash[:error] = "Something went wrong!"
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    @tastes = @user.tastes.all.order(created_at: :desc)
    list = current_user.followeds.select(:follower_id)
    @who = User.all.unfollowed(list).includes([:photo_attachment])
  end

  private

  def params_user
    params.require(:user).permit(:username, :fullname, :photo, :coverimage)
  end

end
