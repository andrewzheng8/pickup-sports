class GamesController < ApplicationController
  before_action :verify, except: [:index, :show]

  def index
    if params[:games]
      @games = Game.where("LOWER(title) LIKE ?", "%#{params[:games].downcase}%")
    else
      @games = Game.all
    end
    @posts = Post.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  def show
    @game = Game.find(params[:id])
    @post = Post.new
    @posts = Post.all
    @player_game = PlayerGame.new
    if @game.location
      @location = @game.location
      @locations_arr = [@location]
      @hash = Gmaps4rails.build_markers(@locations_arr) do |loc, marker|
        marker.lat loc.latitude
        marker.lng loc.longitude
      end
    end
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    @game.update(game_params)
    if @game.save
      redirect_to game_path(@game)
    else
      render :edit
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to games_path
  end

  private

  def game_params
    params.require(:game).permit(:title, :description, :start, :end, :sport_id, :location_id)
  end
end
