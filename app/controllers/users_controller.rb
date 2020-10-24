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
  
  private

  def params_user
    params.require(:user).permit(:username, :fullname, :photo, :coverimage)
  end

end
