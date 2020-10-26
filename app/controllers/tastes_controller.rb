class TastesController < ApplicationController
  before_action :require_login

  def index
    @taste = current_user.tastes.build if current_user    
  end

  def new
  end

  def create
  end

  def discover
  end
  
  private

  def params_opinion
    params.require(:taste).permit(:text)
  end

  def require_login
    return if logged_in?

    flash[:error] = 'You must be logged in to access'
    redirect_to root_path
  end
end
