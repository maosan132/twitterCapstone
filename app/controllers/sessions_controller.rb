class SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:session][:username])
    if @user
      log_in @user
      redirect_to tastes_path
    else
      redirect_to root_path
    end
  end

  def destroy
    log_out @user if logged_in?
    redirect_to root_path
  end
end
