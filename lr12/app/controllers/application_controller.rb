class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :require_login

  include SessionHelper

  private

  def require_login
  	unless signed_in?
  		flash[:danger] = 'You should sign in'
  		redirect_to session_new_path
  	end
  end

end
