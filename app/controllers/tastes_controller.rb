class TastesController < ApplicationController
  before_action :require_login

  def index
    @taste = current_user.tastes.build if current_user
    @tastes = Taste.all.includes(:user)
    
  end

def new
  @taste = Taste.new
end


  def create
    @taste = current_user.tastes.new(params_taste)
    if @taste.save
      redirect_to tastes_path
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
 

  def discover
  end
  
  private

  def params_taste
    params.require(:taste).permit(:text)
  end

  def require_login
    return if logged_in?

    flash[:error] = 'You must be logged in to access'
    redirect_to root_path
  end
end
