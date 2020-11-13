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
    list = @user.followers.select(:followed_id)
    @who = User.all.followed(list).includes([:photo_attachment])
  end

  def follow
    @user = User.find(params[:id])
    @user.current_followers << current_user
    redirect_to user_path(@user)
  end

  def unfollow
    @user = User.find(params[:id])
    @user.followers.find_by(followed_id: current_user.id).destroy
    redirect_to user_path(@user)
  end


  private

  def params_user
    params.require(:user).permit(:username, :fullname, :photo, :coverimage)
  end

end
