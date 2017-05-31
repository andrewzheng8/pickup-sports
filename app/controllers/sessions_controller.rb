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
      flash[:danger] = "Incorrect email or password"
      redirect_to new_player_path
    end
  end

  def destroy
    session[:player_id] = nil
    location = Location.find(session[:loc_id])
    location.destroy
    session[:loc_id] = nil
    flash[:success] = "You've successfully logged out"
    redirect_to games_path
  end

  def current_loc
    @location = Location.new(address: params[:address])
    if @location.save
      session[:loc_id] = @location.id
      flash[:success] = "You've successfully entered a location"
      redirect_to games_path
    else
      flash[:danger] = "Couldn't find a location based on address"
      redirect_to games_path
    end
  end

  def change_loc
    location = Location.find(session[:loc_id])
    location.destroy
    session[:loc_id] = nil
    flash[:success] = "You can enter a different location now"
    redirect_to games_path
  end

end
