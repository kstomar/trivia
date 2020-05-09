class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= session[:user_id] && User.find_by(id: session[:user_id])
    session[:user_id] = @current_user&.id
    @current_user
  end

  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end
end
