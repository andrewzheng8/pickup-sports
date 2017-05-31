class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_player
  helper_method :logged_in?

  def current_player
    @current_player ||= Player.find(session[:player_id]) if session[:player_id]
  end

  def logged_in?
    !!current_player
  end

  def verify
    unless logged_in?
      flash[:danger] = "Please Log In"
      redirect_to games_path
    end
  end
end
