class SessionsController < ApplicationController

  def new
  end

  def create
    player = Player.find_by(email: params[:email])
    if player && player.authenticate(params[:password])
      session[:player_id] = player.id
      flash[:success] = "You've successfully logged in"
      redirect_to games_path
    else
      flash[:error] = "Incorrect email or password"
      redirect_to new_player_path
    end
  end

  def destroy
    session[:player_id] = nil
    flash[:success] = "You've successfully logged out"
    redirect_to games_path
  end

end
