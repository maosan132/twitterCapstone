class TastesController < ApplicationController
  before_action :require_login

  def index
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

    flash[:error] = 'You must be logged in to access here'
    redirect_to root_path
  end
end
