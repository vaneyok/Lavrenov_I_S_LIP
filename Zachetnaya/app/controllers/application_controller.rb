class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :require_login

  include SessionControllerHelper

  private

  def require_login
    unless signed_in?
      flash[:alert] = "Вы должны войти"
      redirect_to session_controller_login_path
    end
end

end
