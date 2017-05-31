class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_player
  helper_method :logged_in?
  helper_method :has_current_location?
  helper_method :current_location

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

  def current_location
    @current_location ||= Location.find(session[:loc_id]) if session[:loc_id]
  end

  def has_current_location?
    !!current_location
  end

end
