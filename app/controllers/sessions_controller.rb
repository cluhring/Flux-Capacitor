class SessionsController < ApplicationController
#  def new
#   @user = User.new
#  end

  def create
    user = User.find_or_create_from_auth(auth)
    if user
      session[:user_id] = user.id
      redirect_to dashboard_path
    else
      redirect_to root_path
    end
  end

  def destroy
    # flash[:success] = "Successful logout"
    session.clear
    redirect_to root_path
  end

private

  private

  def auth
    request.env['omniauth.auth']
  end
end
