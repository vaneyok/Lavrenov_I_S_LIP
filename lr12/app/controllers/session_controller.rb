class SessionController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new # sign up
  end

  def create # log in
  	user = User.find_by_username(params[:username])
    if user&.authenticate(params[:password])
      #session[:user_id] = user.id
      sign_in user
      redirect_to root_path
      #redirect_to user
    else
      flash[:danger] = 'Invalid username or password'
      redirect_to session_new_path
      #render 'new'
    end
  end

  def destroy # log out
  	sign_out
  	redirect_to session_new_path
  end
end
