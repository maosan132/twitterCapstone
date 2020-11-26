class LoginPagesController < ApplicationController
  before_action :logout

  def home; end

  private

  def logout
    # redirect_to tastes_path if logged_in?
  end
end
